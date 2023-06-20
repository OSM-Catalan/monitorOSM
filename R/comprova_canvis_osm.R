#' Comprova canvis a OSM
#'
#' Compara objectes d'OSM respecte a una taula de referència
#'
#' @param x un `data.frame` amb les columnes `osm_type`, `osm_id` i etiquetes que vulguem comprovar.
#' @param centre si és `TRUE`, afegeix les coordenades del centre de l'objecte a les columnes `osm_center_lon` i
#'   `osm_center_lat`.
#' @details Només es comparen les etiquetes presents com a columnes d'`x` i la resta s'ometen.
#'
#' @return Retorna una comparació amb [compareDF::compare_df()] de les diferències d'etiquetes dels objectes d'OSM d'`x`
#'   respecte a les etiquetes actuals a OSM.
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
  x_osm <- monitorOSM::consulta_etiquetes_osm(x, etiquetes = names(x), centre = centre)

  x_osm$osm_url <- paste0("https://osm.org/", x_osm$osm_type, "/", x_osm$osm_id)
  x$osm_url <- paste0("https://osm.org/", x$osm_type, "/", x$osm_id)
  x[, c("osm_id", "osm_type")] <- NULL

  out <- suppressWarnings(suppressMessages(
    compareDF::compare_df(df_new = x_osm[, names(x)], df_old = x, group_col = "osm_url", stop_on_error = FALSE)
  ))

  return(out)
}

#' Canvis en html
#'
#' Mostra diferències de taules en html si n'hi ha. Funció pensada per usar en fitxers `.qmd` o `.Rmd`.
#'
#' @param x un objecte de [compareDF::compare_df()].
#'
#' @return la taula html amb les diferències o una cadena de text indicant que no hi ha diferències.
#' @export
#'
#' @examples
canvis_html <- function(x) {
  if (nrow(x$comparison_df) > 0) {
    out <- suppressMessages(compareDF::create_output_table(x, change_col_name = "canvi"))
    out <- gsub(
      "; text-align: center;'>(https://osm.org/(node|way|relation)/[0-9]+)</td>",
      "; text-align: left;'><a href=\"\\1\">\\1<a></td>",
      out
    )
    return(out)
  } else {
    out <- "\U1F389 Tot en ordre \U1F389"
    message(out)
    invisible(out)
  }
}
