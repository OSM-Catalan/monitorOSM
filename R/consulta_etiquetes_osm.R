#' Consulta etiquetes d'OSM
#'
#' @param x un `data.frame` amb les columnes `osm_type` i `osm_id`.
#' @param etiquetes noms de les claus de les etiquetes a consultar. Si no s'especifica, s'afegeixen totes les etiquetes
#'   dels objectes.
#' @param centre si és `TRUE`, afegeix les coordenades del centre de l'objecte a les columnes `osm_center_lon` i
#'   `osm_center_lat`.
#'
#' @return Retorna `x` amb les etiquetes dels objectes com a columnes. Si les columnes ja existien, actualitza els
#'   valors de les etiquetes i conserva l'ordre de les columnes originals afegint les noves al final.
#' @export
#'
#' @examples
#' \dontrun{
#' territoris_etiquetes_completes <- consulta_etiquetes_osm(territoris)
#' }
consulta_etiquetes_osm <- function(x, etiquetes, centre = FALSE) {
  if (!all(c("osm_id", "osm_type") %in% names(x))) {
    stop("Les dades no contenen columnes `osm_type` i `osm_id` que permetin identificar objectes d'OSM.")
  }

  x_unic <- unique(x[, c("osm_type", "osm_id")]) # minimitza la consulta

  consulta <- osmdata::opq_osm_id(
    id = x_unic$osm_id,
    type = x_unic$osm_type,
    out = if (centre) "tags center" else "tags",
    timeout = 1000
  )
  if (!missing(etiquetes)) {
    if (centre) {
      camps <- c("::id", "::type", "::lon", "::lat", etiquetes)
    } else {
      camps <- c("::id", "::type", etiquetes)
    }
    consulta <- osmdata::opq_csv(
      consulta,
      fields = setdiff(camps, c("osm_id", "osm_type", "osm_center_lat", "osm_center_lon"))
    )
  }

  etiquetes <- osmdata::osmdata_data_frame(consulta)

  # Per consultes csv, @id -> osm_id, @type -> osm_type
  names(etiquetes) <- gsub("^@lat", "osm_center_lat", names(etiquetes))
  names(etiquetes) <- gsub("^@lon", "osm_center_lon", names(etiquetes))
  names(etiquetes) <- gsub("^@", "osm_", names(etiquetes))

  center_cols <- grep("^osm_center_(lat|lon)$", names(etiquetes))
  etiquetes[, center_cols] <- lapply(etiquetes[, center_cols], as.numeric)

  columnes_actualitzades <- setdiff(intersect(names(x), names(etiquetes)), c("osm_id", "osm_type"))
  x$`_ordre_files_` <- seq_len(nrow(x))
  out <- merge(x[, setdiff(names(x), columnes_actualitzades)], etiquetes, by = c("osm_id", "osm_type"))

  # Conserva l'ordre original de les files i columnes.
  out <- out[order(out$`_ordre_files_`), unique(c(names(x), names(out)))]
  out$`_ordre_files_` <- NULL

  return(out)
}
