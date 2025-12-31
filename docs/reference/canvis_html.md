# Canvis en html

Mostra diferències de taules en html si n'hi ha. Funció pensada per usar
en fitxers `.qmd` o `.Rmd`.

## Ús

``` r
canvis_html(x)
```

## Paràmetres

- x:

  un objecte de
  [`compareDF::compare_df()`](https://rdrr.io/pkg/compareDF/man/compare_df.html).

## Valor

La taula html amb les diferències o una cadena de text indicant que no
hi ha diferències.
