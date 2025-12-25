# Envia un missatge a un xat de Telegram

Aquest repositori està configurat per enviar missatges al grup de
Telegram de la `Comunitat en català d'OpenStreetMap` amb el bot
`monitorOSM_bot`.

## Ús

``` r
envia_missatge_telegram(
  missatge = "Hi ha canvis a [monitorOSM](https://osm-catalan.github.io/monitorOSM).",
  parse_mode = "Markdown"
)
```

## Paràmetres

- missatge:

  Text del missatge.

- parse_mode:

  El missatge s'interpreta com a `Markdown` o `HTML`.

  On i amb quin bot s'envia el missatge es configura amb les variables
  d'entorn `R_TELEGRAM_BOT_MONITOROSM_BOT` i `TME_OSMCAT_CHATID`. Per
  usar la funció a github, cal configurar les accions perquè carreguin
  aquestes variables d'entorn a partir dels secrets del repositori de
  github.
