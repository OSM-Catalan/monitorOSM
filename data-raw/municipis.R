## Prepara la base de dades de municipis a partir del fitxer municipis.tsv ----

municipis <- utils::read.table(
  file = "data-raw/municipis.tsv",
  header = TRUE,
  sep = "\t",
  quote = "\"",
  na.strings = "",
  colClasses = "character", # osm_id no hi cap en variables de tipus enter
  check.names = FALSE,
  comment.char = "",
  encoding = "UTF-8"
)

municipis <- unique(municipis[order(municipis$regio, municipis$comarca, municipis$`name:ca`), ])
rownames(municipis) <- NULL

usethis::use_data(municipis, overwrite = TRUE, compress = "xz")

# utils::write.table(municipis,
#   file = "data-raw/municipis.tsv",
#   quote = TRUE,
#   sep = "\t",
#   na = "",
#   row.names = FALSE,
#   col.names = TRUE,
#   qmethod = "double"
# )


## Consulta dades a OSM ----

municipis_osm <- consulta_etiquetes_osm(
  x = municipis,
  etiquetes = c("name:ca", "osm_id", "osm_type", "name", "wikidata", "wikipedia", "admin_level")
)
lapply(municipis_osm, unique)

municipis <- municipis_osm[, c(
  "name:ca", "regio", "comarca", "osm_id", "osm_type", "name", "wikipedia", "wikidata", "admin_level"
)]


## Compara nova base de dades amb la del paquet instal·lat ----

library(compareDF)

cols <- intersect(names(municipis), names(monitorOSM::municipis))
diff_municipis <- compare_df(municipis[, cols], monitorOSM::municipis[, cols], group_col = c("osm_type", "osm_id"))
view_html(diff_municipis)


## Compara admin_center amb municipis ----

municipis_rel <- municipis[municipis$osm_type == "relation", ]
municipis_osm <- by(municipis_rel, municipis_rel$comarca, function(x) {
  osmapiR::osm_fetch_objects(osm_type = "relation", osm_ids = x$osm_id)
})

admin_centre_list <- lapply(municipis_osm, function(x) {
  admin_centres <- lapply(x$members, function(y) {
    admin_centre <- y[y[, "role"] %in% "admin_centre", 1:2, drop = FALSE]
    colnames(admin_centre) <- c("osm_type", "osm_id")
    admin_centre
  })

  x$admin_centre <- admin_centres

  return(x)
})
admin_centre <- do.call(rbind, admin_centre_list)

municipis_uid <- do.call(paste, municipis[, c("osm_type", "osm_id")])
grups <- list()
for (i in seq_len(nrow(admin_centre))) {
  x_uid <- do.call(paste, admin_centre[i, c("type", "id")])
  if (nrow(admin_centre$admin_centre[[i]]) == 0) {
    grups[[i]] <- municipis[municipis_uid %in% x_uid, ]
  } else {
    admin_centre_uid <- do.call(
      paste,
      as.data.frame(admin_centre$admin_centre[[i]][, c("osm_type", "osm_id"), drop = FALSE])
    )

    grups[[i]] <- rbind(
      municipis[municipis_uid %in% x_uid, ],
      municipis[municipis_uid %in% admin_centre_uid, ]
    )
  }
}

grups[sapply(grups, function(x) {
  nrow(unique(x[, c("name:ca", "regio", "comarca", "name", "wikipedia", "wikidata")[1:4]])) # diferències en noms
}) > 1]


## FET: Afegeix els admin_center ----

municipis_osm <- by(municipis, municipis$comarca, function(x) {
  osmapiR::osm_fetch_objects(osm_type = "relation", osm_ids = x$osm_id)
})

admin_centre_list <- lapply(municipis_osm, function(x) {
  admin_centres <- lapply(x$members, function(y) {
    admin_centre <- y[y[, "role"] %in% "admin_centre", 1:2, drop = FALSE]
    colnames(admin_centre) <- c("osm_type", "osm_id")
    admin_centre
  })

  x$admin_centre <- admin_centres

  return(x)
})

admin_centre <- do.call(rbind, admin_centre_list)
rownames(admin_centre) <- NULL

n_centres <- sapply(admin_centre$admin_centre, nrow)
table(n_centres)
admin_centre[n_centres == 2, ]

admin_centre_objs <- do.call(rbind, admin_centre$admin_centre)
admin_centre_osm <- consulta_etiquetes_osm(
  x = admin_centre_objs,
  etiquetes = c("name:ca", "osm_id", "osm_type", "name", "wikidata", "wikipedia", "admin_level")
)


### Afegeix comarca i regió ----
admin_centre_osm[, c("regio", "comarca")] <- NA_character_
for (i in seq_len(nrow(admin_centre))) {
  admin_centre_id <- admin_centre$admin_centre[[i]]
  sel_admin_centre <- admin_centre_osm$osm_type %in% admin_centre_id[, "osm_type"] &
    admin_centre_osm$osm_id %in% admin_centre_id[, "osm_id"]
  sel_municipi <- municipis$osm_type %in% admin_centre$type[i] & municipis$osm_id %in% admin_centre$id[i]
  admin_centre_osm[sel_admin_centre, c("regio", "comarca")] <- municipis[sel_municipi, c("regio", "comarca")]
}

municipis_admin_centre <- admin_centre_osm[, c(
  "name:ca", "regio", "comarca", "osm_id", "osm_type", "name", "wikipedia", "wikidata", "admin_level"
)]


municipis_centres <- rbind(municipis, municipis_admin_centre)
municipis_centres <- unique(municipis_centres[
  order(municipis_centres$regio, municipis_centres$comarca, municipis_centres$`name:ca`),
])
rownames(municipis_centres) <- NULL

sum(nrow(municipis), nrow(municipis_admin_centre)) == nrow(municipis_centres)
# dbTools::duplicatedPK(municipis_centres, pk = c("osm_type", "osm_id"))

municipis <- municipis_centres
