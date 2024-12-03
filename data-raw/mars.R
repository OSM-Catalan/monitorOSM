## Prepara la base de dades de mars i oceans a partir del fitxer mars.tsv ----

mars <- utils::read.table(
  file = "data-raw/mars.tsv",
  header = TRUE,
  sep = "\t",
  quote = "\"",
  na.strings = "",
  colClasses = "character", # osm_id no hi cap en variables de tipus enter
  check.names = FALSE,
  comment.char = "",
  encoding = "UTF-8"
)

mars <- unique(mars[order(mars$place, mars$`name:ca`), ])
rownames(mars) <- NULL

usethis::use_data(mars, overwrite = TRUE, compress = "xz")

# utils::write.table(mars,
#   file = "data-raw/mars.tsv",
#   quote = TRUE,
#   sep = "\t",
#   na = "",
#   row.names = FALSE,
#   col.names = TRUE,
#   qmethod = "double"
# )


## Consulta dades a OSM ----

etiquetes <- c("name:ca", "name", "osm_id", "osm_type", "alt_name", "alt_name:ca", "place", "wikidata")

mars_osm <- consulta_etiquetes_osm(x = mars, etiquetes = etiquetes)

lapply(mars_osm, unique)

mars <- mars_osm[, etiquetes]


## Compara nova base de dades amb la del paquet instal·lat ----

library(compareDF)

cols <- intersect(names(mars), names(monitorOSM::mars))
diff_mars <- compare_df(mars[, cols], monitorOSM::mars[, cols], group_col = c("osm_type", "osm_id"))
view_html(diff_mars)


## Busca mars i oceans ----

library(osmdata)

etiquetes <- c("name:ca", "name", "alt_name", "alt_name:ca", "place", "wikidata")

q <- opq(bbox = c(xmin = -180, ymin = -90, xmax = 180, ymax = 90), osm_types = "nwr", out = "tags", timeout = 1000) |>
  add_osm_feature(key = "place", value = c("ocean", "sea")) |>
  add_osm_feature(key = "name")
# q <-  opq_csv(q, fields = c(etiquetes, "::type", "::id"))
cat(opq_string(q))
mars <- osmdata_data_frame(q)
# mars <- mars[, sapply(mars, function(x) !all(is.na(x)))]

cols <- c(grep("(name|:ca)$", names(mars), value = TRUE), "place", "wikidata")
ord <- c("name:ca", "name", "osm_id", "osm_type")
ord <- c(ord, setdiff(cols, ord))

mars <- mars[, ord]

sel_cols <- c("name:ca", "name", "osm_id", "osm_type", "alt_name", "alt_name:ca", "place", "wikidata")
mars <- mars[, sel_cols]
