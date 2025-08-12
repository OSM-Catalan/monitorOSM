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
    out <- "\u1F389 Tot en ordre \u1F389"
    message(out)
    invisible(out)
  }
}


#' Formata les versions que introdueixen canvis amb `kable`
#'
#' @param x Un dels elements de la llista retornada per [cerca_versio_canvis()].
#' @param titol Títol de la taula. S'espera una url i se li afegiran les etiquetes \<a href=titol\>titol</a>
#'
#' @return La taula `knitr_kable` amb informació del conjunt de canvis que ha modificat etiquetes.
#' @noRd
versio_canvi_kable <- function(x, titol) {
  titol_valid <- !missing(titol) || !is.null(titol) || !is.na(titol)
  if (nrow(x) == 0) {
    out <- "No s'ha trobat cap versi\u00F3 en l'estat de refer\u00E8ncia"
    if (titol_valid) {
      out <- paste0(out, " per <a href=\"", titol, "\">", titol, "</a>.")
    } else {
      out <- paste0(out, ".")
    }
  } else {
    x$changeset <- paste0(
      "<a href=\"https://osm.org/changeset/", x$changeset, "\">", x$changeset, "</a>",
      " (<a href=\"https://osmcha.org/changesets/", x$changeset, "\">OSMcha</a>)"
    )
    url_usr_osmcha <- paste0(
      "https://osmcha.org/?filters={\"uids\":[{\"label\":\"", x$uid, "\",\"value\":\"", x$uid, "\"}]}"
    )
    x$user <- paste0(
      "<a href=\"https://osm.org/user/", x$user, "\">", x$user, "</a>",
      " (<a href=\"", utils::URLencode(url_usr_osmcha), "\">OSMcha</a>)"
    )
    out <- knitr::kable(
      x,
      format = "html", row.names = FALSE, align = "c",
      caption = if (titol_valid) paste0("<a href=\"", titol, "\">", titol, "</a>") else NULL,
      escape = FALSE, table.attr = "cellpadding='10'; rules='rows'"
    )
  }

  return(out)
}


#' Mostra les versions que introdueixen canvis en html
#'
#' Funció pensada per usar en fitxers `.qmd` o `.Rmd`.
#'
#' @param x Una llista de canvis retornada per [cerca_versio_canvis()].
#'
#' @return Mostra les taules html amb informació del conjunt de canvis que ha modificat etiquetes.
#' @export
#'
#' @examples
versio_canvis_html <- function(x) {
  for (i in seq_along(x)) {
    if (nrow(x[[i]]) == 0) {
      cat(versio_canvi_kable(x[[i]], titol = names(x)[i]), "\n\n<!-- -->\n\n")
    } else {
      print(versio_canvi_kable(x[[i]], titol = names(x)[i]))
    }
  }
  invisible(x)
}
