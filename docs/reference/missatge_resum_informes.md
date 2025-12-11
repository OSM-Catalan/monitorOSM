# Crea missatge de resum d'informes

Crea missatge de resum d'informes

## Ús

``` r
missatge_resum_informes(canvis, pagina_informe, etiquetes)
```

## Paràmetres

- canvis:

  llista amb objectes produïts per
  [`comprova_canvis_osm()`](https://osm-catalan.github.io/monitorOSM/docs/reference/comprova_canvis_osm.md).
  Si els elements tenen nom, s'usarà com a nom de la fila de la taula
  resum.

- pagina_informe:

  nom de la pàgina de l'informe per generar l'enllaç a la web.

- etiquetes:

  Si no és `NULL`, quan es fa el recompte de canvis, només es tenen en
  compte les etiquetes que quadren amb aquesta expressió regular.

## Valor

Text en format Markdown amb un missatge resum dels informes.
