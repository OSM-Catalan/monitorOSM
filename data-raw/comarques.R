## Prepara la base de dades de comarques a partir del fitxer comarques.tsv ----

comarques <- utils::read.table(
  file = "data-raw/comarques.tsv",
  header = TRUE,
  sep = "\t",
  quote = "\"",
  na.strings = "",
  colClasses = "character", # osm_id no hi cap en variables de tipus enter
  check.names = FALSE,
  comment.char = "",
  encoding = "UTF-8"
)

comarques <- unique(comarques[order(comarques$regio, comarques$`name:ca`), ])
rownames(comarques) <- NULL

usethis::use_data(comarques, overwrite = TRUE, compress = "xz")

# utils::write.table(comarques,
#   file = "data-raw/comarques.tsv",
#   quote = TRUE,
#   sep = "\t",
#   na = "",
#   row.names = FALSE,
#   col.names = TRUE,
#   qmethod = "double"
# )


## Consulta dades a OSM ----

comarques_osm <- consulta_etiquetes_osm(
  x = comarques,
  etiquetes = c(
    "name:ca", "osm_id", "osm_type", "name", "wikipedia", "wikidata",
    "border_type", "admin_level", "historic:admin_level",
  )
)

lapply(comarques_osm, unique)

comarques <- comarques_osm[, c(
  "name:ca", "regio", "osm_id", "osm_type", "name", "wikipedia", "wikidata",
  "border_type", "admin_level", "historic:admin_level"
)]


## Compara nova base de dades amb la del paquet instal·lat ----

library(compareDF)

cols <- intersect(names(comarques), names(monitorOSM::comarques))
diff_comarques <- compare_df(comarques[, cols], monitorOSM::comarques[, cols], group_col = c("osm_type", "osm_id"))
view_html(diff_comarques)
