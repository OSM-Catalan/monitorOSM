#' Comprova canvis a OSM
#'
#' Compara l'estat actual d'objectes d'OSM respecte a una taula de referència.
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
#' comarques_canviades <- comarques[, setdiff(names(comarques), "regio")]
#' comarques_canviades$name[1] <- "Malnom"
#' canvis <- comprova_canvis_osm(comarques_canviades)
#' canvis_html(canvis)
#' }
comprova_canvis_osm <- function(x, centre = FALSE) {
  x_osm <- consulta_etiquetes_osm(x, etiquetes = names(x), centre = centre)

  x_osm$osm_url <- paste0("https://osm.org/", x_osm$osm_type, "/", x_osm$osm_id)
  x$osm_url <- paste0("https://osm.org/", x$osm_type, "/", x$osm_id)
  x[, c("osm_id", "osm_type")] <- NULL

  out <- suppressWarnings(suppressMessages(
    compareDF::compare_df(df_new = x_osm[, names(x)], df_old = x, group_col = "osm_url", stop_on_error = FALSE)
  ))

  return(out)
}


#' Cerca les versions que introdueixen canvis
#'
#' @param x El resultat de [comprova_canvis_osm()] o similar.
#'
#' @return Retorna una llista de les versions que introdueixen canvis per cada etiqueta.
#' @export
#'
#' @examples
#' \dontrun{
#' comarques_canviades <- comarques[, setdiff(names(comarques), "regio")]
#' comarques_canviades$name[1] <- "Malnom"
#' canvis <- comprova_canvis_osm(comarques_canviades)
#' versions_canvi <- cerca_versio_canvis(canvis)
#' versions_canvi
#' }
cerca_versio_canvis <- function(x) { # nolint: cyclocomp_linter
  res <- by(x$comparison_df, x$comparison_df[[x$group_col]], function(canvi) {
    osm_type <- gsub("https://osm.org/|/[0-9]+", "", unique(canvi[[x$group_col]]))
    osm_id <- gsub("https://osm.org/(node|way|relation)/", "", unique(canvi[[x$group_col]]))

    historial <- osmapiR::osm_history_object(osm_type = osm_type, osm_id = osm_id)

    if (nrow(canvi) == 1 && canvi$chng_type == "-") { # eliminat
      canvis_introduits <- historial[nrow(historial), c("version", "changeset", "timestamp", "user", "uid")]
      canvis_introduits <- cbind(canvis_introduits, data.frame(canvi = "\u274C eliminat"))

      return(canvis_introduits)
    }

    # modificat
    canvi_etiquetes <- apply(canvi[, setdiff(names(canvi), "chng_type")], 2, unique)
    canvi_etiquetes <- canvi_etiquetes[sapply(canvi_etiquetes, length) > 1]

    canvis_trobats <- FALSE
    i <- nrow(historial)
    canvis_introduits <- data.frame()
    while (i != 0 && !canvis_trobats) {
      etiquetes_analitzar <- lapply(historial$tags[c(i, i - 1)], function(etiquetes) { # 1: versió i; 2: versió anterior
        etiquetes[etiquetes$key %in% names(canvi_etiquetes), ]
      })
      if (length(unique(etiquetes_analitzar)) > 1) { # Hi ha algun canvi d'etiquetes
        for (clau in names(canvi_etiquetes)) {
          # valor_actual <- canvi_etiquetes[[clau]][1]
          valor_referencia <- canvi_etiquetes[[clau]][2]

          if (!clau %in% etiquetes_analitzar[[1]]$key &&
              clau %in% etiquetes_analitzar[[2]]$key && # nolint: indentation_linter
              identical(etiquetes_analitzar[[2]]$value[etiquetes_analitzar[[2]]$key == clau], valor_referencia)) {
            # Versió anterior correcte i eliminada en aquesta versió

            canvis_introduits <- rbind(canvis_introduits, data.frame(
              historial[i, c("version", "changeset", "timestamp", "user", "uid")],
              key = clau, value = NA_character_, ref_value = valor_referencia
            ))
            canvi_etiquetes <- canvi_etiquetes[setdiff(names(canvi_etiquetes), clau)]
          } else if (clau %in% etiquetes_analitzar[[1]]$key &&
              clau %in% etiquetes_analitzar[[2]]$key && # nolint: indentation_linter
              etiquetes_analitzar[[2]]$value[etiquetes_analitzar[[2]]$key == clau] !=
                etiquetes_analitzar[[1]]$value[etiquetes_analitzar[[1]]$key == clau] &&
              identical(etiquetes_analitzar[[2]]$value[etiquetes_analitzar[[2]]$key == clau], valor_referencia)) {
            # Versió anterior correcte modificada en aquesta versió

            canvis_introduits <- rbind(canvis_introduits, data.frame(
              historial[i, c("version", "changeset", "timestamp", "user", "uid")],
              key = clau,
              value = etiquetes_analitzar[[1]]$value[etiquetes_analitzar[[1]]$key == clau],
              ref_value = valor_referencia
            ))
            canvi_etiquetes <- canvi_etiquetes[setdiff(names(canvi_etiquetes), clau)]
          } else if (clau %in% etiquetes_analitzar[[1]]$key &&
              !clau %in% etiquetes_analitzar[[2]]$key && # nolint: indentation_linter
              is.na(valor_referencia)) {
            # Etiqueta no present i afegida en aquesta versió

            canvis_introduits <- rbind(canvis_introduits, data.frame(
              historial[i, c("version", "changeset", "timestamp", "user", "uid")],
              key = clau,
              value = etiquetes_analitzar[[1]]$value[etiquetes_analitzar[[1]]$key == clau],
              ref_value = valor_referencia
            ))
          }
        }
      }

      i <- i - 1
      if (all(names(canvi_etiquetes) %in% canvis_introduits$key)) {
        canvis_trobats <- TRUE
      }
    }

    return(canvis_introduits)
  })

  return(res)
}
