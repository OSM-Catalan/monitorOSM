# Modifica etiquetes a OSM

Obre un conjunt de canvis, edita les etiquetes i tanca el conjunt de
canvis.

## Ús

``` r
modifica_etiquetes_osm(x, claus, comentari, ...)
```

## Paràmetres

- x:

  `data.frame` amb els valors de les etiquetes que s'actualitzaran i les
  columnes `osm_type` i `osm_id` o (`type` i `id`) que identifiquen els
  objectes d'OSM.

- claus:

  Claus de les etiquetes que es modificaran. Han de correspondre a
  columnes d'`x`.

- comentari:

  Comentari descriptiu del conjunt de canvis.

- ...:

  Etiquetes del conjunt de canvis com a paràmetres amb noms
  (`clau = "valor"`).

## Valor

Retorna l'identificador del conjunt de canvis.

## Detalls

Cal identificar-se amb un usuari d'OSM i els canvis es faran amb aquest
usuari i sota la seva responsabilitat.

Les etiquetes més habituals pels conjunts de canvis inclouen `source` i
`hashtags`. En el marc del projecte, `monitorOSM`, pot ser bona idea
afegir el paràmetre `hashtags = "monitorOSM"` per poder fer un seguiment
de les edicions. Vegeu <https://wiki.openstreetmap.org/wiki/Changeset>
per més detalls.

OSM és un projecte col·laboratiu on participen milers de persones.
Reviseu bé els canvis, consensueu-los amb la comunitat, afegiu
comentaris informatius del conjunt de canvis i feu un bon ús d'aquesta
funció.

## Nota

Modificar les claus `osm_type`, `osm_id`, `id` i `type` amb aquesta
funció pot donar problemes per col·lisions de noms de columnes d'`x` i
no és recomanat.

## Exemples

``` r
# Restaura els noms de les comarques dels Països Catalans segons `comarques`
if (FALSE) { # \dontrun{
modifica_etiquetes_osm(
  comarques,
  claus = "name",
  comentari = "Restaura els noms de les comarques dels Països Catalans", hashtags = "monitorOSM"
)
} # }
```
