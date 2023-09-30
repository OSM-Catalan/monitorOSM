
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Bases de dades de referència

| bd                                                                                                                        | n_obj | n_cols | columnes                                                                                                               |
|:--------------------------------------------------------------------------------------------------------------------------|------:|-------:|:-----------------------------------------------------------------------------------------------------------------------|
| [comarques](https://github.com/OSM-Catalan/monitorOSM/blob/main/data-raw/comarques.tsv)                                   |    95 |      9 | name:ca , regio , osm_id , osm_type , name , wikipedia , wikidata , admin_level , historic:admin_level                 |
| [municipis](https://github.com/OSM-Catalan/monitorOSM/blob/main/data-raw/municipis.tsv)                                   |  1671 |      9 | name:ca , regio , comarca , osm_id , osm_type , name , wikipedia , wikidata , admin_level                              |
| [loc_admin_centre_municipis](https://github.com/OSM-Catalan/monitorOSM/blob/main/data-raw/loc_admin_centre_municipis.tsv) |  1673 |     12 | regio , comarca , municipi , osm_type , osm_id , name:ca , name , wikidata , wikipedia , place , capital , admin_level |
| [territoris](https://github.com/OSM-Catalan/monitorOSM/blob/main/data-raw/territoris.tsv)                                 |    10 |      7 | name:ca , regio , osm_id , osm_type , name , wikipedia, wikidata                                                       |
| [PPCC](https://github.com/OSM-Catalan/monitorOSM/blob/main/data-raw/PPCC.tsv)                                             |     1 |      6 | name:ca , osm_id , osm_type , name , wikipedia, wikidata                                                               |

En total es monitoritzen 3450 objectes d’OpenStreetMap.

Abans de revertir canvis a OSM o comentar conjunts de canvis, comproveu
les dades i, si cal, corregiu les bases de dades de referència.

## Com afegir noves bases de dades?

Si voleu afegir objectes amb les seves etiquetes a les bases de dades,
podeu obrir un
[tiquet](https://github.com/OSM-Catalan/monitorOSM/issues) o un
[PR](https://github.com/OSM-Catalan/monitorOSM/pulls) que inclogui la
base de dades i el codi per generar els informes.

### Instruccions

Creeu una taula amb els estats de referència. Cal que cada fila
contingui les etiquetes que vulgueu monitorar i els identificadors únics
d’OpenStreetMap (`osm_type` i `osm_id`). Podeu generar les taules amb el
paquet d’R `osmdata`.

Exemple per generar una taula amb les etiquetes `name:ca`, `name`,
`wikipedia` i `wikidata` de tots els cims dels Països Catalans
(`relation(id:11747082)`):

``` r
library(osmdata)
#> Data (c) OpenStreetMap contributors, ODbL 1.0. https://www.openstreetmap.org/copyright

cims <- opq(bbox = "relation(id:11747082)", out = "tags", timeout = "100") |>
  add_osm_feature(key = "natural", value = "peak") |>
  opq_csv(fields = c("name:ca", "::id", "::type", "name", "wikipedia", "wikidata")) |>
  osmdata_data_frame()

names(cims) <- gsub("^@", "osm_", names(cims))
head(cims)
#>                    name:ca   osm_id osm_type                     name
#> 1           Puig de l'Ofre 26783257     node           Puig de l'Ofre
#> 2        Puig de Bassegoda 26862531     node        Puig de Bassegoda
#> 3           Cap de Boumort 26862611     node           Cap de Boumort
#> 4             Cap del Verd 26862659     node             Cap del Verd
#> 5       Pic de Comaloforno 26862732     node       Pic de Comaloforno
#> 6 Cap de la Gallina Pelada 26862904     node Cap de la Gallina Pelada
#>                     wikipedia  wikidata
#> 1           ca:Puig de l'Ofre  Q1652824
#> 2        ca:Puig de Bassegoda  Q4894784
#> 3           ca:Cap de Boumort  Q5034453
#> 4             ca:Cap del Verd  Q5034455
#> 5       ca:Pic de Comaloforno  Q2984642
#> 6 ca:Cap de la Gallina Pelada Q17482071
```

És pràctic afegir la comarca i territori de cada objecte per poder fer
les reversions amb conjunts de canvis més petits:

``` r
library(osmdata)
library(monitorOSM) # comarques
#> Dades sota llicència ODbL 1.0. (c) Col·laboradors d'OpenStreetMap https://www.openstreetmap.org/copyright

cims_comarca <- mapply(function(id, nom, territori) {
  out <- opq(bbox = paste0("relation(id:", id, ")"), out = "tags", timeout = "100") |>
    add_osm_feature(key = "natural", value = "peak") |>
    opq_csv(fields = c("name:ca", "::id", "::type", "name", "wikipedia", "wikidata")) |>
    osmdata_data_frame()

  if (nrow(out) > 0) {
    out$regio <- territori
    out$comarca <- nom
  }

  return(out)
}, id = comarques$osm_id, nom = comarques$`name:ca`, territori = comarques$regio, SIMPLIFY = FALSE)

cims_comarques <- do.call(rbind, cims_comarca)
names(cims_comarques) <- gsub("^@", "osm_", names(cims_comarques))

cims_comarques <- cims_comarques[!duplicated(cims_comarques[, c("osm_type", "osm_id")]), ] # elimina objectes duplicats
ordre <- order(cims_comarques$regio, cims_comarques$comarca, cims_comarques$`name:ca`)
ordre_columnes <- c("name:ca", "regio", "comarca", "osm_id", "osm_type", "name", "wikipedia", "wikidata")
cims_comarques <- unique(cims_comarques[ordre, ordre_columnes])
rownames(cims_comarques) <- NULL

head(cims_comarques)
#>   name:ca   regio          comarca     osm_id osm_type              name
#> 1    <NA> Andorra Andorra la Vella 1473165520     node        Pic Carroi
#> 2    <NA> Andorra Andorra la Vella 2188366026     node    Pic de Coll Pa
#> 3    <NA> Andorra Andorra la Vella 3956298776     node              <NA>
#> 4    <NA> Andorra Andorra la Vella 9127648546     node Pic de la Peguera
#> 5    <NA> Andorra Andorra la Vella 9706258659     node    Roc dels Corbs
#> 6    <NA> Andorra Andorra la Vella 9706258725     node    Roc de Patapou
#>   wikipedia  wikidata
#> 1      <NA> Q21329274
#> 2      <NA> Q21329357
#> 3      <NA>      <NA>
#> 4      <NA>      <NA>
#> 5      <NA> Q21329430
#> 6      <NA>      <NA>
```

Un cop tingueu la base de dades a punt, es pot afegir al paquet de
manera que estigui disponible quan el carreguem:

``` r
usethis::use_data(cims_comarques, overwrite = TRUE, compress = "xz")
```

És recomanable preparar un fitxer per gestionar la nova base de dades i
desar-la com a taula
([exemple](https://github.com/OSM-Catalan/monitorOSM/blob/main/data-raw/comarques.R)).
També cal documentar la nova taula
([exemple](https://github.com/OSM-Catalan/monitorOSM/blob/main/man/comarques.Rd)).

Per començar a monitorar la nova base de dades cal crear o afegir-la a
un fitxer com
[limits.qmd](https://github.com/OSM-Catalan/monitorOSM/blob/main/web/limits.qmd).
