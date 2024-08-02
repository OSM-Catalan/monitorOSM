## Prepara la base de dades d'estats a partir del fitxer estats.tsv ----

estats <- utils::read.table(
  file = "data-raw/estats.tsv",
  header = TRUE,
  sep = "\t",
  quote = "\"",
  na.strings = "",
  colClasses = "character", # osm_id no hi cap en variables de tipus enter
  check.names = FALSE,
  comment.char = "",
  encoding = "UTF-8"
)

estats <- unique(estats[order(estats$`name:ca`), ])
rownames(estats) <- NULL

usethis::use_data(estats, overwrite = TRUE, compress = "xz")

# utils::write.table(estats,
#   file = "data-raw/estats.tsv",
#   quote = TRUE,
#   sep = "\t",
#   na = "",
#   row.names = FALSE,
#   col.names = TRUE,
#   qmethod = "double"
# )


## Consulta dades a OSM ----

estats_osm <- consulta_etiquetes_osm(
  x = estats,
  etiquetes = c("name:ca", "osm_id", "osm_type", "name", "wikidata", "wikipedia", "admin_level", "historic:admin_level")
)

lapply(estats_osm, unique)

estats <- estats_osm[, c(
  "name:ca", "regio", "osm_id", "osm_type", "name", "wikipedia", "wikidata", "admin_level", "historic:admin_level"
)]


## Compara nova base de dades amb la del paquet instal·lat ----

library(compareDF)

cols <- intersect(names(estats), names(monitorOSM::estats))
diff_estats <- compare_df(estats[, cols], monitorOSM::estats[, cols], group_col = c("osm_type", "osm_id"))
view_html(diff_estats)


## Busca estats ----

etiquetes <- c(
  "name", "alt_name", "official_name", "long_name", "native_name", "old_name", "old_official_name", "short_name"
)
etiquetes <- c(sort(c(etiquetes, paste0(etiquetes, ":ca"))), "wikidata")

q <- opq(bbox = c(xmin = -180, ymin = -90, xmax = 180, ymax = 90), osm_types = "rel", out = "tags", timeout = 1000) |>
  add_osm_feature(key = "admin_level", value = "2") |>
  add_osm_feature(key = "boundary", value = "administrative") |>
  opq_csv(
    fields = c(etiquetes, "::type", "::id")
  )
cat(opq_string(q))
estats <- osmdata_data_frame(q)
estats <- estats[, sapply(estats, function(x) !all(is.na(x)))]
ord <- c("name:ca", "name", "osm_id", "osm_type")
ord <- c(ord, setdiff(names(estats), ord))
estats <- estats[, ord]
