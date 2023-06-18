## Prepara la base de dades de PPCC a partir del fitxer PPCC.tsv

PPCC <- utils::read.table(
  file = "data-raw/PPCC.tsv",
  header = TRUE,
  sep = "\t",
  quote = "\"",
  na.strings = "",
  colClasses = "character", # osm_id no hi cap en variables de tipus enter
  check.names = FALSE,
  comment.char = "",
  encoding = "UTF-8"
)

usethis::use_data(PPCC, overwrite = TRUE, compress = "xz")

# utils::write.table(PPCC,
#   file = "data-raw/PPCC.tsv",
#   quote = TRUE,
#   sep = "\t",
#   na = "",
#   row.names = FALSE,
#   col.names = TRUE,
#   qmethod = "double"
# )
