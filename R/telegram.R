#' Envia un missatge a al grup de Telegram de la `Comunitat en català d'OpenStreetMap`
#'
#' @param missatge Text del missatge.
#' @param parse_mode El missatge s'interpreta com a `Markdown` o `HTML`.
#'
#' @return
#' @export
#'
#' @examples
missatge_telegram <- function(missatge = "Hi ha canvis a [monitorOSM](https://osm-catalan.github.io/monitorOSM).",
                              parse_mode = "Markdown") {
  if (!requireNamespace("telegram.bot", quietly = TRUE)) {
    stop("El paquet `telegram.bot` no està instal·lat. Instal·leu-lo amb:\n\tinstall.packages(\"telegram.bot\")")
  }
  bot <- telegram.bot::Bot(token = telegram.bot::bot_token("monitorOSM_bot"))

  bot$sendMessage(
    chat_id = Sys.getenv("TME_OSMCAT_CHATID"),
    text = missatge,
    parse_mode = parse_mode
  )
}
