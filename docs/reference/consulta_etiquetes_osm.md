# Consulta etiquetes d'OSM

Consulta etiquetes d'OSM

## Ús

``` r
consulta_etiquetes_osm(x, etiquetes, centre = FALSE)
```

## Paràmetres

- x:

  un `data.frame` o `matrix` amb les columnes `osm_type` i `osm_id`.

- etiquetes:

  noms de les claus de les etiquetes a consultar. Si no s'especifica,
  s'afegeixen totes les etiquetes dels objectes.

- centre:

  si és `TRUE`, afegeix les coordenades del centre de l'objecte a les
  columnes `osm_center_lon` i `osm_center_lat`.

## Valor

Retorna `x` amb les etiquetes dels objectes com a columnes. Si les
columnes ja existien, actualitza els valors de les etiquetes i conserva
l'ordre de les columnes originals afegint les noves al final.

## Exemples

``` r
if (FALSE) { # \dontrun{
territoris_etiquetes_completes <- consulta_etiquetes_osm(territoris)
} # }
```
