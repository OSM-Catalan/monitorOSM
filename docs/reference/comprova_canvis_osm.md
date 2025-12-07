# Comprova canvis a OSM

Compara l'estat actual d'objectes d'OSM respecte a una taula de
referència.

## Ús

``` r
comprova_canvis_osm(x, centre = FALSE)
```

## Paràmetres

- x:

  un `data.frame` amb les columnes `osm_type`, `osm_id` i etiquetes que
  vulguem comprovar.

- centre:

  si és `TRUE`, afegeix les coordenades del centre de l'objecte a les
  columnes `osm_center_lon` i `osm_center_lat`.

## Valor

Retorna una comparació amb
[`compareDF::compare_df()`](https://rdrr.io/pkg/compareDF/man/compare_df.html)
de les diferències d'etiquetes dels objectes d'OSM d'`x` respecte a les
etiquetes actuals a OSM.

## Detalls

Només es comparen les etiquetes presents com a columnes d'`x` i la resta
s'ometen.

## Exemples

``` r
if (FALSE) { # \dontrun{
comarques_canviades <- comarques[, setdiff(names(comarques), "regio")]
comarques_canviades$name[1] <- "Malnom"
canvis <- comprova_canvis_osm(comarques_canviades)
canvis_html(canvis)
} # }
```
