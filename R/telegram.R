
#' Crea missatge de resum d'informes
#'
#' @param ... objectes produits per [comprova_canvis_osm()]. Si els parametres tenen nom, s'usarà com a nom de la fila
#'   de la taula resum. Sinó, s'usarà el nom de la variable.
#' @param pagina_informe nom de la pàgina de l'informe per generar l'enllaç a la web.
#' @param etiquetes Si no és `NULL`, quan es fa el recomte de canvis, només té en compte les etiquetes que quadren amb
#'   aquesta exrpessió regular.
#'
#' @returns Text en format Markdown amb un missatge resum dels informes.
#' @export
#'
#' @examples
missatge_resum_informes <- function(..., pagina_informe, etiquetes){
  canvis_taules <- list(...)
  if (is.null(names(canvis_taules))) {
    names(canvis_taules) <- sapply(substitute(...()), deparse)
  }

  n_canvis <- if (missing(etiquetes)) {
    sapply(canvis_taules, function(x) {
      nrow(x$change_count)
    })
  } else {
    sapply(canvis_taules, function(x) {
      df <- x$comparison_table_diff_numbers
      sum(apply(df[, grep(etiquetes, names(df))], 1, function(y) any(y != 0)))
    })
  }

  names(n_canvis) <- names(canvis_taules)
  n_obj <- setNames(vapply(canvis_taules, function(x) x$change_summary[["old_obs"]], FUN.VALUE = 1), nm = names(n_canvis))
  df <- data.frame(dif = n_canvis, obj = n_obj)
  # n_obj <- n_obj[n_canvis > 0]
  # n_canvis <- n_canvis[n_canvis > 0]
  total_canvis <- sum(n_canvis)

  missatge <- paste0("⚠️ Hi ha ", total_canvis, if (total_canvis > 1) " objectes" else " objecte amb canvis")
  if (missing(pagina_informe)) {
    missatge <- paste0(missatge, ".")
  } else {
    missatge <- paste0(
      missatge, " a [", pagina_informe, "](https://osm-catalan.github.io/monitorOSM/web/", pagina_informe, ".html)."
    )
  }
  missatge <- paste0(missatge, "`\n", paste(capture.output(print(knitr::kable(df))), collapse = "\n"), "\n`")

  return(missatge)
}


#' Envia un missatge a un xat de Telegram
#'
#' Aquest repositori està configurat per enviar missatges al grup de Telegram de la
#' `Comunitat en catal\u00E0 d'OpenStreetMap` amb el bot `monitorOSM_bot`.
#'
#' @param missatge Text del missatge.
#' @param parse_mode El missatge s'interpreta com a `Markdown` o `HTML`.
#'
#' On i amb quin bot s'envia el missatge es configura amb les variables d'entorn `R_TELEGRAM_BOT_MONITOROSM_BOT` i
#' `TME_OSMCAT_CHATID`. Per usar la funció a github, cal configurar les accions perquè carreguin aquestes variables
#' d'entorn a partir dels secrets del repositori de github.
#'
#' @return
#' @export
#'
#' @examples
envia_missatge_telegram <- function(missatge = "Hi ha canvis a [monitorOSM](https://osm-catalan.github.io/monitorOSM).",
                              parse_mode = "Markdown") {
  if (!requireNamespace("telegram.bot", quietly = TRUE)) {
    stop(
      "El paquet `telegram.bot` no est\u00E0 instal\u00B7lat. Instal\u00B7leu-lo amb:\n",
      "\tinstall.packages(\"telegram.bot\")"
    )
  }
  bot <- telegram.bot::Bot(token = telegram.bot::bot_token("monitorOSM_bot"))

  bot$sendMessage(
    chat_id = Sys.getenv("TME_OSMCAT_CHATID"),
    text = missatge,
    parse_mode = parse_mode
  )
}
