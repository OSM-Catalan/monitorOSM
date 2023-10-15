#' Modifica etiquetes a OSM
#'
#' Obre un conjunt de canvis, edita les etiquetes i tanca el conjunt de canvis.
#'
#' @param x `data.frame` amb els valors de les etiquetes que s'actualitzaran i les columnes `osm_type` i `osm_id` o
#'   (`type` i `id`) que identifiquen els objectes d'OSM.
#' @param claus Claus de les etiquetes que es modificaran. Han de correspondre a columnes d'`x`.
#' @param comentari Comentari descriptiu del conjunt de canvis.
#' @param ... Etiquetes del conjunt de canvis com a paràmetres amb noms (`clau = "valor"`).
#'
#' @details
#' Cal identificar-se amb un usuari d'OSM i els canvis es faran amb aquest usuari i sota la seva responsabilitat.
#'
#' Les etiquetes més habituals pels conjunts de canvis inclouen `source` i `hashtags`. En el marc del projecte,
#' `monitorOSM`, pot ser bona idea afegir el paràmetre `hashtags = "monitorOSM"` per poder fer un seguiment de les
#' edicions. Vegeu <https://wiki.openstreetmap.org/wiki/Changeset> per més detalls.
#'
#' OSM és un projecte col·laboratiu on participen milers de persones. Reviseu bé els canvis, consensueu-los amb la
#' comunitat, afegiu comentaris informatius del conjunt de canvis i feu un bon ús d'aquesta funció.
#'
#' @note
#' Modificar les claus `osm_type`, `osm_id`, `id` i `type` amb aquesta funció pot donar problemes per col·lisions de
#' noms de columnes d'`x` i no és recomanat.
#'
#' @return Retorna l'identificador del conjunt de canvis.
#' @export
#'
#' @examples
#' # Restaura els noms de les comarques dels Països Catalans segons `comarques`
#' \dontrun{
#' modifica_etiquetes_osm(
#'   comarques,
#'   claus = "name",
#'   comentari = "Restaura els noms de les comarques dels Països Catalans", hashtags = "monitorOSM"
#' )
#' }
modifica_etiquetes_osm <- function(x, claus, comentari, ...) {
  if (missing(claus)) {
    stop("Cal especificar les claus de les etiquetes que es volen modificar.")
  }
  if (!all(claus %in% names(x))) {
    stop("Totes les claus han de correspondre a columnes d'`x`")
  }
  if (missing(comentari)) {
    stop("Cal un comentari que descrigui el conjunt de canvis.")
  }

  names(x) <- gsub("^osm_id$", "id", names(x))
  names(x) <- gsub("^osm_type$", "type", names(x))
  osmchange <- osmapiR::osmchange_modify(x = x, tag_keys = claus)

  if (nrow(osmchange) == 0) {
    message("No hi ha canvis a cometre.")

    return(NA)
  }

  changeset_id <- osmapiR::osm_create_changeset(comment = comentari, ...)

  osmapiR::osm_diff_upload_changeset(changeset_id = changeset_id, osmcha = osmchange)
  osmapiR::osm_close_changeset(changeset_id = changeset_id)

  return(changeset_id)
}
