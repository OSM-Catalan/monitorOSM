
## Ordena i desa localitats per tipus ----


### localitats amb etiquetes ref d'administracions (ref:idescat, ref:INSEE, ref:ine) ----

loc_ref <- utils::read.table(
  file = "data-raw/loc_ref.tsv",
  header = TRUE,
  sep = "\t",
  quote = "\"",
  na.strings = "",
  colClasses = "character", # osm_id no hi cap en variables de tipus enter
  check.names = FALSE,
  comment.char = "",
  encoding = "UTF-8"
)

loc_ref <- unique(loc_ref[order(
  loc_ref$regio,
  loc_ref$comarca,
  loc_ref$municipi,
  loc_ref$`name:ca`
), c("name:ca", "regio", "comarca", "municipi", "osm_type", "osm_id",
     "name", "wikidata", "wikipedia", "place", "capital", "admin_level",
     "ref:idescat", "ref:ine"#, "ref:INSEE" # etiqueta buida
)])
rownames(loc_ref) <- NULL

usethis::use_data(loc_ref, overwrite = TRUE, compress = "xz")

# utils::write.table(loc_ref,
#   file = "data-raw/loc_ref.tsv",
#   quote = TRUE,
#   sep = "\t",
#   na = "",
#   row.names = FALSE,
#   col.names = TRUE,
#   qmethod = "double"
# )


#### Consulta dades a OSM ----

loc_ref_osm <- consulta_etiquetes_osm(
  x = loc_ref,
  etiquetes = c("name:ca", "osm_id", "osm_type", "name", "wikidata", "wikipedia", "place", "capital", "admin_level",
                "ref:idescat", "ref:ine", "ref:INSEE")
)
lapply(loc_ref_osm, unique)

loc_ref <- loc_ref_osm[, c(
  "name:ca", "regio", "comarca", "municipi", "osm_id", "osm_type", "name", "wikipedia", "wikidata",
  "place", "capital", "admin_level", "ref:idescat", "ref:ine"#, "ref:INSEE" # etiqueta buida
)]

# Localitats sense etiqueta capital segons l'admin_level de la relació que fan d'admin_centre
#TODO: edita <- loc_ref[is.na(loc_ref$capital), ]


#### Compara nova base de dades amb la del paquet instal·lat ----

library(compareDF)

cols <- intersect(names(loc_ref), names(monitorOSM::loc_ref))
diff_loc_admin_centre_muni <- compare_df(
  loc_ref[, cols], monitorOSM::loc_ref[, cols],
  group_col = c("osm_type", "osm_id")
)
view_html(diff_loc_admin_centre_muni)


## Cerca localitats amb ref:idescat, ref:ine o ref:INSEE a OSM ----

localitats_ref_osmL <- by(municipis, municipis$osm_id, function(x) {
  d <- osmdata::opq(bbox = paste0("relation(id:", x$osm_id, ")"), osm_types = "nwr", out = "tags", timeout = 500) |>
    osmdata::add_osm_features(list("ref:INSEE" = NULL, "ref:ine" = NULL, "ref:idescat" = NULL)) |>
    osmdata::add_osm_feature(key = "place") |>
    osmdata::osmdata_data_frame()


  area <- x[, c("regio", "comarca", "name:ca")]
  names(area) <- gsub("^name:ca", "municipi", names(area))

  if (nrow(d) > 0) {
    out <- cbind(area, d)
  } else {
    out <- area
  }

  return(out)
})

localitats_ref_osm <- do.call(dbTools::rbind_addColumns, localitats_ref_osmL)
rownames(localitats_ref_osm) <- NULL

# save(localitats_ref_osm, file = "data-raw/localitats_ref_osm.RData", compress = "xz")
load("data-raw/localitats_ref_osm.RData", verbose = TRUE) # localitats_ref_osm

sel_dup_loc_admincenter <- localitats_ref_osm$osm_type == "node" &
  localitats_ref_osm$osm_id %in% loc_admin_centre_municipis$osm_id
sel_dup_municipis <- localitats_ref_osm$osm_type == "relation" & localitats_ref_osm$osm_id %in% municipis$osm_id
sel_dup_comarques <- localitats_ref_osm$osm_type == "relation" & localitats_ref_osm$osm_id %in% comarques$osm_id
elimina <- localitats_ref_osm[sel_dup_loc_admincenter | sel_dup_municipis | sel_dup_comarques, ]
table(elimina$capital, useNA = "always")
localitats_ref_osm <- localitats_ref_osm[!sel_dup_loc_admincenter & !sel_dup_municipis & !sel_dup_comarques, ]

localitats_ref_osm[is.na(localitats_ref_osm$osm_id), 1:3]
# CONCLUSIÓ: a la Catalunya Nord ref:INSEE no es correspon a objectes place sinó a municipis i comarques.
localitats_ref_osm <- localitats_ref_osm[!is.na(localitats_ref_osm$osm_id), ]
localitats_ref_osm <- localitats_ref_osm[, !sapply(localitats_ref_osm, function(x) all(is.na(x)))]


# unique(localitats_ref_osm[is.na(localitats_ref_osm$`ref:idescat`), 1:2])
# d_idescat <- osmdata::opq(bbox = "relation(id:349053)", out = "tags", timeout = 500) |>
#   osmdata::add_osm_feature(key = c("place", "ref:idescat") |>
#   osmdata::osmdata_data_frame()
# unique(d_idescat[is.na(d_idescat$`ref:ine`), 1:2])
## CONCLUSIÓ: totes les localitats amb ref:ine del principat tenen ref:idescat i viceversa

rels <- localitats_ref_osm[localitats_ref_osm$osm_type %in% c("way", "relation"), ]
rels <- rels[, !sapply(rels, function(x) all(is.na(x)))]
rels

sel_cols <- ord_cols <- c(
  "name:ca", "regio", "comarca", "municipi", "osm_type", "osm_id", "name", "wikidata", "wikipedia",
  "place", "capital", "admin_level", "ref:idescat", "ref:ine"#, "ref:INSEE" # etiqueta buida
)
ord_cols <- c(ord_cols, sort(setdiff(names(localitats_ref_osm), ord_cols)))
localitats_ref_osm <- localitats_ref_osm[, ord_cols]

lapply(localitats_ref_osm[, c("boundary", "capital", "place", "admin_level", "type")], table)
View(localitats_ref_osm[, sel_cols])

lapply(localitats_ref_osm[, sel_cols], function(x) table(is.na(x)))

loc_ref <- localitats_ref_osm[, sel_cols]
