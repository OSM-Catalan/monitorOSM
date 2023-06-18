## Prepara la base de dades de comarques a partir del fitxer comarques.tsv

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
