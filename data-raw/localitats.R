## Cerca localitats a OSM ----

localitats_osm <- by(municipis, municipis$osm_id, function(x) {
  d <- osmdata::opq(bbox = paste0("relation(id:", x$osm_id, ")"), out = "tags", timeout = 500) |>
    osmdata::add_osm_feature(key = "place") |>
    osmdata::osmdata_data_frame()

  area <- x[, c("regio", "comarca", "name:ca")]
  names(area) <- gsub("^name:ca", "municipi", names(area))

  out <- cbind(area, d)

  return(out)
})

localitats_osm <- do.call(dbTools::rbind_addColumns, localitats_osm)
rownames(localitats_osm) <- NULL

# save(localitats_osm, file = "data-raw/localitats_osm.RData", compress = "xz")
load("data-raw/localitats_osm.RData", verbose = TRUE) # localitats_osm


## Ordena i desa localitats per tipus ----


### admin_centre de municipis ----

loc_admin_centre_municipis <- utils::read.table(
  file = "data-raw/loc_admin_centre_municipis.tsv",
  header = TRUE,
  sep = "\t",
  quote = "\"",
  na.strings = "",
  colClasses = "character", # osm_id no hi cap en variables de tipus enter
  check.names = FALSE,
  comment.char = "",
  encoding = "UTF-8"
)

loc_admin_centre_municipis <- unique(loc_admin_centre_municipis[order(
  loc_admin_centre_municipis$regio,
  loc_admin_centre_municipis$comarca,
  loc_admin_centre_municipis$municipi,
  loc_admin_centre_municipis$`name:ca`
), ])
rownames(loc_admin_centre_municipis) <- NULL

usethis::use_data(loc_admin_centre_municipis, overwrite = TRUE, compress = "xz")

# utils::write.table(loc_admin_centre_municipis,
#   file = "data-raw/loc_admin_centre_municipis.tsv",
#   quote = TRUE,
#   sep = "\t",
#   na = "",
#   row.names = FALSE,
#   col.names = TRUE,
#   qmethod = "double"
# )


#### Consulta dades a OSM ----

loc_admin_centre_municipis_osm <- consulta_etiquetes_osm(
  x = loc_admin_centre_municipis,
  etiquetes = c("name:ca", "osm_id", "osm_type", "name", "wikidata", "wikipedia", "place", "capital", "admin_level")
)
lapply(loc_admin_centre_municipis_osm, unique)

# TODO: afegeix capital segons l'admin_level de la relació que fan d'admin_centre
edita <- loc_admin_centre_municipis_osm[is.na(loc_admin_centre_municipis_osm$capital), ]

loc_admin_centre_municipis_osm <- loc_admin_centre_municipis_osm[, c(
  "name:ca", "regio", "comarca", "osm_id", "osm_type", "name", "wikipedia", "wikidata",
  "place", "capital", "admin_level"
)]


#### Compara nova base de dades amb la del paquet instal·lat ----

library(compareDF)

cols <- intersect(names(loc_admin_centre_municipis_osm), names(monitorOSM::loc_admin_centre_municipis))
diff_loc_admin_centre_muni <- compare_df(
  loc_admin_centre_municipis_osm[, cols], monitorOSM::loc_admin_centre_municipis[, cols],
  group_col = c("osm_type", "osm_id")
)
view_html(diff_loc_admin_centre_muni)



#### Consulta admin_centre de municipis a OSM ----

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
  etiquetes = c("name:ca", "osm_id", "osm_type", "name", "wikidata", "wikipedia", "place")
)


##### Afegeix municipi, comarca i regió ----

cols_area <- c("regio", "comarca", "municipi")
admin_centre_osm[, cols_area] <- NA_character_
for (i in seq_len(nrow(admin_centre))) {
  admin_centre_id <- admin_centre$admin_centre[[i]]
  sel_admin_centre <- admin_centre_osm$osm_type %in% admin_centre_id[, "osm_type"] &
    admin_centre_osm$osm_id %in% admin_centre_id[, "osm_id"]
  sel_municipi <- municipis$osm_type %in% admin_centre$type[i] & municipis$osm_id %in% admin_centre$id[i]
  admin_centre_osm[sel_admin_centre, cols_area] <- municipis[sel_municipi, c("regio", "comarca", "name:ca")]
}

municipis_admin_centre <- admin_centre_osm[, c(
  "name:ca", "regio", "comarca", "municipi", "osm_id", "osm_type", "name", "wikipedia", "wikidata", "place"
)]

library(compareDF)
view_html(compare_df(municipis_admin_centre, loc_admin_centre_municipis, group_col = c("osm_type", "osm_id")))


### TODO: altres tipus de localitat ----
sort(table(localitats_osm$place, useNA = "ifany"))
cols <- c("name:ca", "regio", "comarca", "municipi", "osm_type", "osm_id", "name", "wikipedia", "wikidata", "place")
sel_place <- c(
  "archipelago", "borough", "city", "city_block", "county", "hamlet", "island", "islet",
  "municipality", "quarter", "region", "sea", "square", "state", "suburb", "town", "village"
)
setdiff(unique(localitats_osm$place), sel_place)
# Manten 1 place=locality que és admin_centre d'un municipi
#                  name:ca     regio comarca            municipi osm_type     osm_id                name    place
# 9265 Sant Jordi Desvalls Principat Gironès Sant Jordi Desvalls     node 1470839189 Sant Jordi Desvalls locality

localitats_osm_sel <- localitats_osm[
  localitats_osm$place %in% sel_place | (localitats_osm$osm_type == "node" & localitats_osm$osm_id == "1470839189"),
  cols
]

table(localitats_osm_sel$place)

sapply(localitats_osm_sel, function(x) sum(is.na(x)))

sense_nom <- localitats_osm_sel[is.na(localitats_osm_sel$name), ]
sense_nom <- sense_nom[, sapply(sense_nom, function(x) !all(is.na(x)))]
table(sense_nom$place)
table(sense_nom$osm_type)
table(sense_nom$`name:ca`)
sense_nom[!is.na(sense_nom$`name:ca`), ]

localitats_osm_sel <- localitats_osm_sel[!is.na(localitats_osm_sel$name), ]

sense_nom_ca <- localitats_osm_sel[is.na(localitats_osm_sel$`name:ca`), ]
sense_nom_ca <- sense_nom_ca[, sapply(sense_nom, function(x) !all(is.na(x)))]
table(sense_nom_ca$place)
table(sense_nom_ca$osm_type)
table(sense_nom_ca$regio)
sense_nom_ca$name

sense_nom[!is.na(sense_nom$`name:ca`), ]

#### TODO: afegeix name:ca que falten ----
# genera la base de dades de referència (1 taula o una per cada tipus de place?)
# elimina municipis[municipis$osm_type == "node", ] (tots presents a localitats_osm_sel)
