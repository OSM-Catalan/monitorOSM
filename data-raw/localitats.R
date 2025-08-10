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
