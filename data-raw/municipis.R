## Prepara la base de dades de municipis a partir del fitxer municipis.tsv

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
