# Territoris dels Països Catalans

Dades dels territoris dels Països Catalans.

## Ús

``` r
territoris
```

## Format

Un `data.frame` amb dades dels 10 territoris per les següents 7
variables.

- name:ca:

  Etiqueta `name:ca`.

- regio:

  Nom de la regió \["Andorra", "Aran", "CatNord", "Franja", "Illes",
  "Múrcia", "Principat", "PV"\].

- osm_id:

  Número identificador a OSM.

- osm_type:

  Tipus d'objecte d'OSM.

- name:

  Etiqueta `name`.

- wikipedia:

  Etiqueta `wikipedia`.

- wikidata:

  Etiqueta `wikidata`.

## Vegeu també

Altres bases de dades de referència:
[`municipis`](https://osm-catalan.github.io/monitorOSM/docs/reference/municipis.md),
[`comarques`](https://osm-catalan.github.io/monitorOSM/docs/reference/comarques.md),
[`PPCC`](https://osm-catalan.github.io/monitorOSM/docs/reference/PPCC.md),
[`loc_admin_centre_municipis`](https://osm-catalan.github.io/monitorOSM/docs/reference/loc_admin_centre_municipis.md).

## Exemples

``` r
territoris[, c("regio", "name")]
#>        regio                                       name
#> 1    Andorra                                    Andorra
#> 2       Aran                                 Val d'Aran
#> 3    CatNord                         Catalunya del Nord
#> 4     Franja                           Franja de Ponent
#> 5      Illes                              Illes Balears
#> 6      Illes                                   Pitiüses
#> 7      Illes                                   Mallorca
#> 8      Illes                                    Menorca
#> 9     Múrcia                                  El Carche
#> 10 Principat    Català com a llengua pròpia a Catalunya
#> 11 Principat                                  Catalunya
#> 12        PV                       Comunitat Valenciana
#> 13        PV Municipis de Predomini Lingüístic Valencià
```
