## Prepara la base de dades de territoris a partir del fitxer territoris.tsv

territoris <- utils::read.table(
  file = "data-raw/territoris.tsv",
  header = TRUE,
  sep = "\t",
  quote = "\"",
  na.strings = "",
  colClasses = "character", # osm_id no hi cap en variables de tipus enter
  check.names = FALSE,
  comment.char = "",
  encoding = "UTF-8"
)

territoris <- unique(territoris[order(territoris$regio, territoris$`name:ca`), ])
rownames(territoris) <- NULL

usethis::use_data(territoris, overwrite = TRUE, compress = "xz")

# utils::write.table(territoris,
#   file = "data-raw/territoris.tsv",
#   quote = TRUE,
#   sep = "\t",
#   na = "",
#   row.names = FALSE,
#   col.names = TRUE,
#   qmethod = "double"
# )


## Consulta dades a OSM ----

territoris_osm <- consulta_etiquetes_osm(
  x = territoris,
  etiquetes = c("name:ca", "osm_id", "osm_type", "name", "wikidata", "wikipedia")
)

lapply(territoris_osm, unique)

territoris <- territoris_osm[, c("name:ca", "regio", "osm_id", "osm_type", "name", "wikipedia", "wikidata")]


## Compara nova base de dades amb la del paquet instal·lat ----

library(compareDF)

cols <- intersect(names(territoris), names(monitorOSM::territoris))
diff_territoris <- compare_df(territoris[, cols], monitorOSM::territoris[, cols], group_col = c("osm_type", "osm_id"))
view_html(diff_territoris)
