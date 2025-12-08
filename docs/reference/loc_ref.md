# Localitats amb referència de l'administració als Països Catalans

Dades de les localitats (tenen etiqueta `place`) que tenen alguna
referència de l'administració (etiquetes `ref:idescat` o `ref:ine` als
Països Catalans. Les localitats que compleixen aquestes condicions però
que ja són a la taula
[`loc_admin_centre_municipis`](https://osm-catalan.github.io/monitorOSM/docs/reference/loc_admin_centre_municipis.md),
[`municipis`](https://osm-catalan.github.io/monitorOSM/docs/reference/municipis.md)
o
[`comarques`](https://osm-catalan.github.io/monitorOSM/docs/reference/comarques.md),
s'ometen.

## Ús

``` r
loc_ref
```

## Format

Un `data.frame` amb 4996 objectes amb per les següents 14 variables.

- name:ca:

  Etiqueta `name:ca`.

- regio:

  Subdivisió \["Aran", "CatNord", "Franja", "Illes", "Principat", "PV",
  "Sardenya"\].

- comarca:

  Etiqueta `name:ca` de la comarca on es troba el municipi.

- municipi:

  Etiqueta `name:ca` del municipi en què l'element fa d'`admin_centre`.

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

- place:

  Etiqueta `place`.

- capital:

  Etiqueta `capital`.

- admin_level:

  Etiqueta `admin_level`.

- ref:idescat:

  Etiqueta `ref:idescat`.

- ref:ine:

  Etiqueta `ref:ine`.

## Nota

Els municipis de la Catalunya Nord tenen etiquetes `ref:INSEE` però els
casos són en altres taules.

## Vegeu també

Altres bases de dades de referència:
[`loc_admin_centre_municipis`](https://osm-catalan.github.io/monitorOSM/docs/reference/loc_admin_centre_municipis.md),
[`PPCC`](https://osm-catalan.github.io/monitorOSM/docs/reference/PPCC.md),
[`municipis`](https://osm-catalan.github.io/monitorOSM/docs/reference/municipis.md),
[`comarques`](https://osm-catalan.github.io/monitorOSM/docs/reference/comarques.md),
[`territoris`](https://osm-catalan.github.io/monitorOSM/docs/reference/territoris.md).

## Exemples

``` r
head(loc_ref)
#>    name:ca regio    comarca municipi osm_type     osm_id     name  wikidata
#> 1   Arties  Aran Val d'Aran Alt Aran     node  255249974   Arties  Q2865771
#> 2 Bagergue  Aran Val d'Aran Alt Aran     node 6694279971 Bagergue Q11907586
#> 3 Baqueira  Aran Val d'Aran Alt Aran     node  256694894 Baqueira Q60850575
#> 4    Garòs  Aran Val d'Aran Alt Aran     node  256696087    Garòs Q11923818
#> 5    Gessa  Aran Val d'Aran Alt Aran     node  256694901    Gessa Q11924158
#> 6   Tredós  Aran Val d'Aran Alt Aran     node  256694857   Tredòs Q11953027
#>     wikipedia   place capital admin_level   ref:idescat     ref:ine
#> 1   en:Arties village    <NA>        <NA> 2502540001701 25025000101
#> 2 ca:Bagergue  hamlet    <NA>        <NA> 2502540002201 25025000201
#> 3        <NA>  hamlet    <NA>        <NA> 2502540006902 25025000602
#> 4    es:Garós  hamlet    <NA>        <NA> 2502540004301 25025000401
#> 5    ca:Gessa  hamlet    <NA>        <NA> 2502540005601 25025000501
#> 6   ca:Tredòs  hamlet    <NA>        <NA> 2502540007501 25025000701
```
