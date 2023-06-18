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
