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
