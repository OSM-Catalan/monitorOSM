#' Canvis en html
#'
#' Mostra diferències de taules en html si n'hi ha. Funció pensada per usar en fitxers `.qmd` o `.Rmd`.
#'
#' @param x un objecte de [compareDF::compare_df()].
#'
#' @return La taula html amb les diferències o una cadena de text indicant que no hi ha diferències.
#' @export
#'
#' @examples
canvis_html <- function(x) {
  if (nrow(x$comparison_df) > 0) {
    out <- suppressMessages(compareDF::create_output_table(x, change_col_name = "canvi"))
    out <- gsub(
      "; text-align: center;'>(https://osm.org/(node|way|relation)/[0-9]+)</td>",
      "; text-align: left;'><a href=\"\\1\">\\1</a></td>",
      out
    )
    return(out)
  } else {
    out <- "\U1F389 Tot en ordre \U1F389"
    message(out)
    invisible(out)
  }
}


#' Mostra les versions que introdueixen canvis en html
#'
#' @param x Un dels elements de la llista retornada per [cerca_versio_canvis()].
#' @param titol Títol de la taula. S'espera una url i se li afegiran les etiquetes \<a href=titol\>titol</a>
#'
#' @return La taula html amb informació del conjunt de canvis que ha modificat etiquetes.
#' @export
#'
#' @examples
versio_canvis_html <- function(x, titol) {
  x$changeset <- paste0("<a href=\"https://osm.org/changeset/", x$changeset, "\">", x$changeset, "</a>")
  x$user <- paste0("<a href=\"https://osm.org/user/", x$user, "\">", x$user, "</a>")
  out <- knitr::kable(
    x,
    format = "html", row.names = FALSE, align = "c",
    caption = paste0("<a href=\"", titol, "\">", titol, "</a>"),
    escape = FALSE, table.attr = "cellpadding='10'; rules='rows'"
  )

  return(out)
}
