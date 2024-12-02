## Prepara la base de dades de capitals d'estats a partir del fitxer capitals.tsv ----

capitals <- utils::read.table(
  file = "data-raw/capitals.tsv",
  header = TRUE,
  sep = "\t",
  quote = "\"",
  na.strings = "",
  colClasses = "character", # osm_id no hi cap en variables de tipus enter
  check.names = FALSE,
  comment.char = "",
  encoding = "UTF-8"
)

capitals <- unique(capitals[order(capitals$estat, capitals$`name:ca`), ])
rownames(capitals) <- NULL

usethis::use_data(capitals, overwrite = TRUE, compress = "xz")

# utils::write.table(capitals,
#   file = "data-raw/capitals.tsv",
#   quote = TRUE,
#   sep = "\t",
#   na = "",
#   row.names = FALSE,
#   col.names = TRUE,
#   qmethod = "double"
# )


## Consulta dades a OSM ----

etiquetes <- c("name:ca", "name", "osm_id", "osm_type", "alt_name", "alt_name:ca", "place", "wikidata")

capitals_osm <- consulta_etiquetes_osm(x = capitals, etiquetes = etiquetes)

lapply(capitals_osm, unique)

capitals[, etiquetes] <- capitals_osm[, etiquetes]


## Compara nova base de dades amb la del paquet instal·lat ----

library(compareDF)

cols <- intersect(names(capitals), names(monitorOSM::capitals))
diff_capitals <- compare_df(capitals[, cols], monitorOSM::capitals[, cols], group_col = c("osm_type", "osm_id"))
view_html(diff_capitals)


## Busca capitals ----

library(osmdata)

## busca per etiqueta capital
q_capital <- opq(
  bbox = c(xmin = -180, ymin = -90, xmax = 180, ymax = 90), osm_types = "nwr", out = "tags", timeout = 1000
) |>
  add_osm_features(list(capital = "2", capital = "yes")) |>
  add_osm_feature(key = "name")
cat(opq_string(q_capital))
capitals_2 <- osmdata_data_frame(q_capital)


## busca per rol admin_centre en relacions d'estats
q_role <- paste(
  'relation["admin_level"="2"]["boundary"="administrative"];',
  'node(r:"admin_centre");',
  "out tags;"
)
capitals_role <- osmdata_data_frame(q_role)


### Cerca estat de les capitals
estats <- mapply(
  osmapiR::osm_relations_object,
  osm_type = capitals_role$osm_type,
  osm_id = capitals_role$osm_id,
  SIMPLIFY = FALSE
)
names(estats) <- paste(capitals_role$osm_type, capitals_role$osm_id)

table(capitals$osm_type)


estat <- sapply(estats_sel, function(x) {
  nom <- x$tags[[1]]$value[x$tags[[1]]$key == "name:ca"]
  if (length(nom) == 0) {
    nom <- NA_character_ # x$tags[[1]]$value[x$tags[[1]]$key == "name"]
    warning("Falta name:ca per ", nom, " (https://osm.org/", x$type, "/", x$id, ")")
  }
  nom
})

capitals_role$estat <- estat


### Ajunta objectes ----
table(capitals_2$osm_type)
table(capitals_role$osm_type)

intersect(capitals_role$osm_id[capitals_role$osm_type == "node"], capitals_2$osm_id[capitals_2$osm_type == "node"])
id_dif_caprol <- setdiff(
  capitals_role$osm_id[capitals_role$osm_type == "node"],
  capitals_2$osm_id[capitals_2$osm_type == "node"]
)
id_dif_cap <- setdiff(
  capitals_2$osm_id[capitals_2$osm_type == "node"],
  capitals_role$osm_id[capitals_role$osm_type == "node"]
)

dif_cap <- capitals_2[capitals_2$osm_id %in% id_dif_cap, ]
dif_caprol <- capitals_role[capitals_role$osm_id %in% id_dif_caprol, ]
dif_cap <- dif_cap[, sapply(dif_cap, function(x) !all(is.na(x)))]
dif_caprol <- dif_caprol[, sapply(dif_caprol, function(x) !all(is.na(x)))]

capitals <- unique(dbTools::rbind_addColumns(capitals_role, dif_cap, capitals_2[capitals_2$osm_type != "node", ]))

cols0 <- c( # totes les etiquetes excepte noms en altres idiomes
  grep("(name|:ca)$", names(capitals), value = TRUE),
  grep("name", names(capitals), value = TRUE, invert = TRUE)
)
# View(lapply(capitals[, setdiff(cols0, "osm_id")], unique))
cols <- sort(c( # etiquetes seleccionades
  grep("(name|:ca)$", names(capitals), value = TRUE),
  "admin_level",
  grep("^capital", names(capitals), value = TRUE),
  "place", "wikidata"
))
ord <- c("estat", "name:ca", "name", "osm_id", "osm_type")
ord <- c(
  ord,
  setdiff(cols, c(ord, "GNS:dsg_name", "salb:name", grep("^source|:name$", cols, value = TRUE), "capital_ISO3166-1"))
)

capitals <- capitals[, ord]
# View(capitals)
View(lapply(capitals[, c(
  "admin_level", "capital", "capital:defacto", "capital:executive", "capital:judicial", "capital:legislative",
  "int_name", "loc_name", "long_name", "nat_name", "official_name", "official_name:ca", "old_name", "old_name:ca",
  "place", "reg_name", "short_name", "shortest_name"
)], unique))
