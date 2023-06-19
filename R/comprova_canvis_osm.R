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

  x_osm$osm_url <- paste0("https///osm.org/", x_osm$osm_type, "/", x_osm$osm_id)
  x$osm_url <- paste0("https///osm.org/", x$osm_type, "/", x$osm_id)
  x[, c("osm_id", "osm_type")] <- NULL

  out <- suppressWarnings(suppressMessages(
    compareDF::compare_df(df_new = x_osm[, names(x)], df_old = x, group_col = "osm_url", stop_on_error = FALSE)
  ))

  return(out)
}

#' canvis_html
#'
#' Mostra diferències de taules en html si n'hi ha. Funció pensada per usar en fitxers `.qmd` o `.Rmd`.
#'
#' @param x un objecte de [compare_df][compareDF]
#'
#' @return la taula html amb les diferències o una cadena de text indicant que no hi ha diferències.
#' @export
#'
#' @examples
canvis_html <- function(x) {
  if (nrow(x$comparison_df) > 0) {
    out <- suppressMessages(compareDF::create_output_table(x))
    return(out)
  } else {
    out <- "🎉 Tot en ordre 🎉"
    message(out)
    invisible(out)
  }
}
