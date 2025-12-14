# Comarques dels Països Catalans

Dades de les Comarques dels Països Catalans.

## Ús

``` r
comarques
```

## Format

Un `data.frame` amb dades de les 95 comarques per les següents 9
variables.

- name:ca:

  Etiqueta `name:ca`.

- regio:

  Subdivisió \["Andorra", "CatNord", "Franja", "Illes", "Múrcia",
  "Principat", "PV"\].

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

- border_type:

  Etiqueta `border_type`.

- admin_level:

  Etiqueta `admin_level`.

- historic:admin_level:

  Etiqueta `historic:admin_level`.

- ref:idescat:

  Etiqueta `ref:idescat`.

## Nota

Les parròquies d'Andorra corresponen a comarques (`admin_level = "7"`) i
s'inclouen a `comarques`.

## Vegeu també

Altres bases de dades de referència:
[`PPCC`](https://osm-catalan.github.io/monitorOSM/docs/reference/PPCC.md),
[`municipis`](https://osm-catalan.github.io/monitorOSM/docs/reference/municipis.md),
[`territoris`](https://osm-catalan.github.io/monitorOSM/docs/reference/territoris.md),
[`loc_admin_centre_municipis`](https://osm-catalan.github.io/monitorOSM/docs/reference/loc_admin_centre_municipis.md),
[`loc_ref`](https://osm-catalan.github.io/monitorOSM/docs/reference/loc_ref.md).

## Exemples

``` r
comarques[, c("name:ca", "regio", "name")]
#>                name:ca     regio                                  name
#> 1     Andorra la Vella   Andorra                      Andorra la Vella
#> 2              Canillo   Andorra                               Canillo
#> 3               Encamp   Andorra                                Encamp
#> 4   Escaldes-Engordany   Andorra                    Escaldes-Engordany
#> 5           La Massana   Andorra                            La Massana
#> 6               Ordino   Andorra                                Ordino
#> 7  Sant Julià de Lòria   Andorra                   Sant Julià de Lòria
#> 8        Alta Cerdanya   CatNord                         Alta Cerdanya
#> 9               Capcir   CatNord                                Capcir
#> 10            Conflent   CatNord                              Conflent
#> 11          Fenolledès   CatNord                            Fenolhedés
#> 12            Rosselló   CatNord                              Rosselló
#> 13           Vallespir   CatNord                             Vallespir
#> 14          Baix Aragó    Franja                           Bajo Aragón
#> 15     Baix Aragó-Casp    Franja   Bajo Aragón-Caspe / Baix Aragó-Casp
#> 16          Baix Cinca    Franja               Bajo Cinca / Baix Cinca
#> 17          La Llitera    Franja                La Litera / La Llitera
#> 18          Matarranya    Franja                Matarraña / Matarranya
#> 19           Ribagorça    Franja                             Ribagorza
#> 20             Eivissa     Illes                               Eivissa
#> 21          Formentera     Illes                            Formentera
#> 22             Llevant     Illes                               Llevant
#> 23             Menorca     Illes                               Menorca
#> 24             Migjorn     Illes                               Migjorn
#> 25               Palma     Illes                                 Palma
#> 26     Pla de Mallorca     Illes                       Pla de Mallorca
#> 27             Raiguer     Illes                               Raiguer
#> 28 Serra de Tramuntana     Illes                   Serra de Tramuntana
#> 29            el Carxe    Múrcia                             El Carche
#> 30            Alt Camp Principat                              Alt Camp
#> 31         Alt Empordà Principat                           Alt Empordà
#> 32         Alt Penedès Principat                           Alt Penedès
#> 33          Alt Urgell Principat                            Alt Urgell
#> 34      Alta Ribagorça Principat                        Alta Ribagorça
#> 35               Anoia Principat                                 Anoia
#> 36               Bages Principat                                 Bages
#> 37           Baix Camp Principat                             Baix Camp
#> 38           Baix Ebre Principat                             Baix Ebre
#> 39        Baix Empordà Principat                          Baix Empordà
#> 40      Baix Llobregat Principat                        Baix Llobregat
#> 41        Baix Penedès Principat                          Baix Penedès
#> 42          Barcelonès Principat                            Barcelonès
#> 43            Berguedà Principat                              Berguedà
#> 44            Cerdanya Principat                              Cerdanya
#> 45    Conca de Barberà Principat                      Conca de Barberà
#> 46              Garraf Principat                                Garraf
#> 47           Garrigues Principat                             Garrigues
#> 48            Garrotxa Principat                              Garrotxa
#> 49             Gironès Principat                               Gironès
#> 50            la Selva Principat                              la Selva
#> 51            Lluçanès Principat                              Lluçanès
#> 52             Maresme Principat                               Maresme
#> 53             Moianès Principat                               Moianès
#> 54             Montsià Principat                               Montsià
#> 55             Noguera Principat                               Noguera
#> 56               Osona Principat                                 Osona
#> 57       Pallars Jussà Principat                         Pallars Jussà
#> 58      Pallars Sobirà Principat                        Pallars Sobirà
#> 59        Pla d'Urgell Principat                          Pla d'Urgell
#> 60     Pla de l'Estany Principat                       Pla de l'Estany
#> 61             Priorat Principat                               Priorat
#> 62       Ribera d'Ebre Principat                         Ribera d'Ebre
#> 63            Ripollès Principat                              Ripollès
#> 64             Segarra Principat                               Segarra
#> 65              Segrià Principat                                Segrià
#> 66            Solsonès Principat                              Solsonès
#> 67          Tarragonès Principat                            Tarragonès
#> 68          Terra Alta Principat                            Terra Alta
#> 69              Urgell Principat                                Urgell
#> 70   Vallès Occidental Principat                     Vallès Occidental
#> 71     Vallès Oriental Principat                       Vallès Oriental
#> 72 Comarca de València        PV                   Comarca de València
#> 73    el Baix Maestrat        PV                      el Baix Maestrat
#> 74      el Baix Segura        PV         el Baix Segura / La Vega Baja
#> 75    el Baix Vinalopó        PV                      el Baix Vinalopó
#> 76 el Camp de Morvedre        PV                   el Camp de Morvedre
#> 77    el Camp de Túria        PV                      el Camp de Túria
#> 78           el Comtat        PV                             el Comtat
#> 79   el Vinalopó Mitjà        PV el Vinalopó Mitjà / El Vinalopó Medio
#> 80           els Ports        PV                             els Ports
#> 81          l'Alacantí        PV                            l'Alacantí
#> 82         l'Alcalatén        PV                           l'Alcalatén
#> 83            l'Alcoià        PV                              l'Alcoià
#> 84      l'Alt Maestrat        PV                        l'Alt Maestrat
#> 85      l'Alt Vinalopó        PV     l'Alt Vinalopó / El Alto Vinalopó
#> 86        l'Horta Nord        PV                          l'Horta Nord
#> 87         l'Horta Sud        PV                           l'Horta Sud
#> 88          la Costera        PV                            la Costera
#> 89      la Marina Alta        PV                        la Marina Alta
#> 90     la Marina Baixa        PV                       la Marina Baixa
#> 91       la Plana Alta        PV                         la Plana Alta
#> 92      la Plana Baixa        PV                        la Plana Baixa
#> 93      la Ribera Alta        PV                        la Ribera Alta
#> 94     la Ribera Baixa        PV                       la Ribera Baixa
#> 95            la Safor        PV                              la Safor
#> 96   la Vall d'Albaida        PV                     la Vall d'Albaida
```
