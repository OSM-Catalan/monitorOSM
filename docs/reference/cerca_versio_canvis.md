# Cerca les versions que introdueixen canvis

Cerca les versions que introdueixen canvis

## Ús

``` r
cerca_versio_canvis(x)
```

## Paràmetres

- x:

  El resultat de
  [`comprova_canvis_osm()`](https://osm-catalan.github.io/monitorOSM/docs/reference/comprova_canvis_osm.md)
  o similar.

## Valor

Retorna una llista de les versions que introdueixen canvis per cada
etiqueta.

## Exemples

``` r
if (FALSE) { # \dontrun{
comarques_canviades <- comarques[, setdiff(names(comarques), "regio")]
comarques_canviades$name[1] <- "Malnom"
canvis <- comprova_canvis_osm(comarques_canviades)
versions_canvi <- cerca_versio_canvis(canvis)
versions_canvi
} # }
```
