# Països Catalans

Dades dels Països Catalans a OSM.

## Ús

``` r
PPCC
```

## Format

Un `data.frame` amb les dades de la relació «Països Catalans» per les
següents 6 variables.

- name:ca:

  Etiqueta `name:ca`.

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
[`territoris`](https://osm-catalan.github.io/monitorOSM/docs/reference/territoris.md),
[`loc_admin_centre_municipis`](https://osm-catalan.github.io/monitorOSM/docs/reference/loc_admin_centre_municipis.md).

## Exemples

``` r
PPCC[, 1:3]
#>           name:ca   osm_id osm_type
#> 1 Països Catalans 11747082 relation
```
