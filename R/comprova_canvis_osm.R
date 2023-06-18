#' Consulta etiquetes d'OSM
#'
#' @param x un `data.frame` amb les columnes `osm_type` i `osm_id`.
#' @param centre si és `TRUE`, afegeix les coordenades del centre de l'objecte a les columnes `osm_center_lon` i
#'   `osm_center_lat`.
#'
#' @return Retorna `x` amb les etiquetes dels objectes com a columnes. Si les columnes ja existien, actualitza els
#'   valors de les etiquetes i conserva l'ordre de les columnes originals afegint les noves al final.
#' @export
#'
#' @examples
#' \dontrun{
#' comarques_canviades <- comarques
#' comarques_canviades <- comarques_canviades$name[1] <- "Malnom"
#' canvis <- comprova_canvis_osm(comarques)
#' compareDF::view_html(canvis)
#' }
comprova_canvis_osm <- function(x, centre = FALSE) {
  x_osm <- consulta_etiquetes_osm(x, etiquetes = names(x), centre = centre)

  return(compareDF::compare_df(df_new = x_osm[, names(x)], df_old = x, group_col = "osm_id", stop_on_error = FALSE))
}
