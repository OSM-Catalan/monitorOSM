# Municipis dels Països Catalans

Dades dels municipis dels Països Catalans.

## Ús

``` r
municipis
```

## Detalls

Alguns noms de municipis tenen duplicats. Per construir noms únics (p.
ex. per generar noms de fitxers), podeu usar
`paste0(municipis$regio, "-", municipis$name).`

## Format

Un `data.frame` amb dades dels 1671 municipis per les següents 9
variables.

- name:ca:

  Etiqueta `name:ca`.

- regio:

  Subdivisió \["Aran", "CatNord", "Franja", "Illes", "Principat", "PV",
  "Sardenya"\].

- comarca:

  Etiqueta `name:ca` de la comarca on es troba el municipi.

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

- ref:idescat:

  Etiqueta `ref:idescat`.

- ref:ine:

  Etiqueta `ref:ine`.

- ref:INSEE:

  Etiqueta `ref:INSEE`.

## Nota

Les parròquies d'Andorra corresponen a comarques (`admin_level = "7"`) i
els pobles no tenen relacions, només nodes. Els pobles no s'inclouen.

## Vegeu també

Altres bases de dades de referència:
[`PPCC`](https://osm-catalan.github.io/monitorOSM/docs/reference/PPCC.md),
[`comarques`](https://osm-catalan.github.io/monitorOSM/docs/reference/comarques.md),
[`territoris`](https://osm-catalan.github.io/monitorOSM/docs/reference/territoris.md),
[`loc_admin_centre_municipis`](https://osm-catalan.github.io/monitorOSM/docs/reference/loc_admin_centre_municipis.md),
[`loc_ref`](https://osm-catalan.github.io/monitorOSM/docs/reference/loc_ref.md).

## Exemples

``` r
municipis[, c("name:ca", "regio", "name")]
#>                                          name:ca     regio
#> 1                                       Alt Aran      Aran
#> 2                                          Arres      Aran
#> 3                                         Bausén      Aran
#> 4                                        Bossòst      Aran
#> 5                                        Canejan      Aran
#> 6                                      es Bordes      Aran
#> 7                                            Lés      Aran
#> 8                              Viella i Mitjaran      Aran
#> 9                                        Vilamòs      Aran
#> 10         Angostrina i Vilanova de les Escaldes   CatNord
#> 11                                      Bolquera   CatNord
#> 12                                        Dorres   CatNord
#> 13                                         Èguet   CatNord
#> 14                                          Eina   CatNord
#> 15                                        Enveig   CatNord
#> 16                                            Er   CatNord
#> 17                                       Estavar   CatNord
#> 18                      Font-romeu, Odelló i Vià   CatNord
#> 19                             la Guingueta d'Ix   CatNord
#> 20                              la Tor de Querol   CatNord
#> 21                                           Llo   CatNord
#> 22                                         Naüja   CatNord
#> 23                                         Oceja   CatNord
#> 24                             Palau de Cerdanya   CatNord
#> 25                                         Porta   CatNord
#> 26                                         Portè   CatNord
#> 27                                     Sallagosa   CatNord
#> 28                                 Santa Llocaia   CatNord
#> 29                                     Targasona   CatNord
#> 30                                            Ur   CatNord
#> 31                                 Vallcebollera   CatNord
#> 32                                    els Angles   CatNord
#> 33                                  Font-rabiosa   CatNord
#> 34                                    Formiguera   CatNord
#> 35                                      Matamala   CatNord
#> 36                                   Puigbalador   CatNord
#> 37                                          Real   CatNord
#> 38                            Aiguatèbia i Talau   CatNord
#> 39                                      Arboçols   CatNord
#> 40                                       Campome   CatNord
#> 41                                    Canavelles   CatNord
#> 42                             Castell de Vernet   CatNord
#> 43                                        Catllà   CatNord
#> 44                          Caudiers de Conflent   CatNord
#> 45                              Clarà i Villerac   CatNord
#> 46                                       Codalet   CatNord
#> 47                                         Conat   CatNord
#> 48                          Cornellà de Conflent   CatNord
#> 49                                     els Masos   CatNord
#> 50                                        Escaró   CatNord
#> 51                            Espirà de Conflent   CatNord
#> 52                                        Estoer   CatNord
#> 53                                           Eus   CatNord
#> 54                                       Fillols   CatNord
#> 55                                     Finestret   CatNord
#> 56                                   Fontpedrosa   CatNord
#> 57                                         Fullà   CatNord
#> 58                                     Glorianes   CatNord
#> 59                                           Jóc   CatNord
#> 60                                        Jújols   CatNord
#> 61                                  la Cabanassa   CatNord
#> 62                                    la Llaguna   CatNord
#> 63                                  Marqueixanes   CatNord
#> 64                                        Mentet   CatNord
#> 65                                         Molig   CatNord
#> 66                                     Montlluís   CatNord
#> 67                                        Mosset   CatNord
#> 68                                        Noedes   CatNord
#> 69                                          Nyer   CatNord
#> 70                                  Oleta i Èvol   CatNord
#> 71                                       Orbanyà   CatNord
#> 72                                        Orellà   CatNord
#> 73                                Pi de Conflent   CatNord
#> 74                                        Planès   CatNord
#> 75                                         Prada   CatNord
#> 76                                        Ralleu   CatNord
#> 77                                   Rià i Cirac   CatNord
#> 78                                       Rigardà   CatNord
#> 79                                         Rodés   CatNord
#> 80                                         Sançà   CatNord
#> 81                        Sant Pere dels Forcats   CatNord
#> 82                                        Saorra   CatNord
#> 83                                         Sautó   CatNord
#> 84                                      Serdinyà   CatNord
#> 85                                       Soanyes   CatNord
#> 86                                       Tarerac   CatNord
#> 87                                      Taurinyà   CatNord
#> 88                             Toès i Entrevalls   CatNord
#> 89                                   Vallestàvia   CatNord
#> 90                                     Vallmanya   CatNord
#> 91                                        Vernet   CatNord
#> 92                        Vilafranca de Conflent   CatNord
#> 93                                         Vinçà   CatNord
#> 94                                       Ansinyà   CatNord
#> 95                                     Bellestar   CatNord
#> 96                                      Campossí   CatNord
#> 97                                      Caramany   CatNord
#> 98                                     Cassanyes   CatNord
#> 99                          Caudiers de Fenollet   CatNord
#> 100                                    Centernac   CatNord
#> 101                                     El Viver   CatNord
#> 102                                      Felluns   CatNord
#> 103                                     Fenollet   CatNord
#> 104                                        Fossa   CatNord
#> 105                                   l'Esquerda   CatNord
#> 106                             la Tor de França   CatNord
#> 107                                       lançac   CatNord
#> 108                                        Maurí   CatNord
#> 109                          Montalban lo Castèl   CatNord
#> 110                          Pesillà de Conflent   CatNord
#> 111                                     Planeses   CatNord
#> 112                              Prats de Sornià   CatNord
#> 113                                    Prunyanes   CatNord
#> 114                                   Rasigueres   CatNord
#> 115                                     Rebollet   CatNord
#> 116                       Sant Martí de Fenollet   CatNord
#> 117                         Sant Pau de Fenollet   CatNord
#> 118                                       Sornià   CatNord
#> 119                                    Trevillac   CatNord
#> 120                                       Trillà   CatNord
#> 121                                         Virà   CatNord
#> 122                                       Alenyà   CatNord
#> 123                                     Argelers   CatNord
#> 124                            Bages de Rosselló   CatNord
#> 125                                       Baixàs   CatNord
#> 126                        Banyuls de la Marenda   CatNord
#> 127                          Banyuls dels Aspres   CatNord
#> 128                                          Bao   CatNord
#> 129                                       Bompàs   CatNord
#> 130                                       Brullà   CatNord
#> 131                                 Bula d'Amunt   CatNord
#> 132                                  Bulaternera   CatNord
#> 133                                    Cabestany   CatNord
#> 134                                        Calce   CatNord
#> 135                                     Calmella   CatNord
#> 136                                      Cameles   CatNord
#> 137                            Canet de Rosselló   CatNord
#> 138                                       Cànoes   CatNord
#> 139                                    Casafabre   CatNord
#> 140                                Cases de Pena   CatNord
#> 141                                   Castellnou   CatNord
#> 142                        Cervera de la Marenda   CatNord
#> 143                                       Clairà   CatNord
#> 144                                      Corbera   CatNord
#> 145                       Corbera de les Cabanes   CatNord
#> 146                        Cornellà de la Ribera   CatNord
#> 147                          Cornellà del Bercol   CatNord
#> 148                                    Cotlliure   CatNord
#> 149                                  el Barcarès   CatNord
#> 150                                     el Soler   CatNord
#> 151                                      el Voló   CatNord
#> 152                                         Elna   CatNord
#> 153                             Espirà de l'Aglí   CatNord
#> 154                                     Estagell   CatNord
#> 155                                      Forques   CatNord
#> 156                                         Illa   CatNord
#> 157                                     l'Albera   CatNord
#> 158                                   la Bastida   CatNord
#> 159                             la Roca d'Albera   CatNord
#> 160                           la Torre del Bisbe   CatNord
#> 161                                   les Cluses   CatNord
#> 162                                       Llauró   CatNord
#> 163                                       Llupià   CatNord
#> 164                                      Millars   CatNord
#> 165                                    Montescot   CatNord
#> 166                          Montesquiu d'Albera   CatNord
#> 167                                      Montner   CatNord
#> 168                                    Montoriol   CatNord
#> 169                                       Nefiac   CatNord
#> 170                                          Oms   CatNord
#> 171                              Òpol i Perellós   CatNord
#> 172                                       Ortafà   CatNord
#> 173                                         Paçà   CatNord
#> 174                              Palau del Vidre   CatNord
#> 175                                 Paretstortes   CatNord
#> 176                                     Perpinyà   CatNord
#> 177                         Pesillà de la Ribera   CatNord
#> 178                                          Pià   CatNord
#> 179                                   Pollestres   CatNord
#> 180                                     Pontellà   CatNord
#> 181                                  Portvendres   CatNord
#> 182                            Prunet i Bellpuig   CatNord
#> 183                                      Queixàs   CatNord
#> 184                                   Ribesaltes   CatNord
#> 185                                     Salelles   CatNord
#> 186                                       Salses   CatNord
#> 187                        Sant Andreu de Sureda   CatNord
#> 188                      Sant Cebrià de Rosselló   CatNord
#> 189                     Sant Esteve del Monestir   CatNord
#> 190                           Sant Feliu d'Amunt   CatNord
#> 191                           Sant Feliu d'Avall   CatNord
#> 192                       Sant Genís de Fontanes   CatNord
#> 193                   Sant Hipòlit de la Salanca   CatNord
#> 194                           Sant Joan la Cella   CatNord
#> 195                   Sant Llorenç de la Salanca   CatNord
#> 196                        Sant Miquel de Llotes   CatNord
#> 197                      Sant Nazari de Rosselló   CatNord
#> 198                         Santa Coloma de Tuïr   CatNord
#> 199                           Santa Maria la Mar   CatNord
#> 200                                       Sureda   CatNord
#> 201                                     Talteüll   CatNord
#> 202                                      Terrats   CatNord
#> 203                                         Tesà   CatNord
#> 204                                      Toluges   CatNord
#> 205                                     Torderes   CatNord
#> 206                      Torrelles de la Salanca   CatNord
#> 207                                    Trasserra   CatNord
#> 208                                     Trullars   CatNord
#> 209                                         Tuïr   CatNord
#> 210                     Vilallonga de la Salanca   CatNord
#> 211                        Vilallonga dels Monts   CatNord
#> 212                                   Vilamulaca   CatNord
#> 213                        Vilanova de la Ribera   CatNord
#> 214                              Vilanova de Raó   CatNord
#> 215                                      Vingrau   CatNord
#> 216                                        Arles   CatNord
#> 217                                        Ceret   CatNord
#> 218                                     Cortsaví   CatNord
#> 219                                      Costoja   CatNord
#> 220                                    el Pertús   CatNord
#> 221                                       el Tec   CatNord
#> 222                  els Banys d'Arles i Palaldà   CatNord
#> 223                                    la Menera   CatNord
#> 224                                     Montboló   CatNord
#> 225                                   Montferrer   CatNord
#> 226                         Morellàs i les Illes   CatNord
#> 227                   Prats de Molló i la Presta   CatNord
#> 228                                      Reiners   CatNord
#> 229                      Sant Joan de Pladecorts   CatNord
#> 230                      Sant Llorenç de Cerdans   CatNord
#> 231                                  Sant Marçal   CatNord
#> 232                                  Serrallonga   CatNord
#> 233                                       Tellet   CatNord
#> 234                                       Teulís   CatNord
#> 235                                       Vivers   CatNord
#> 236                       Aiguaviva de Bergantes    Franja
#> 237                           Bellmunt de Mesquí    Franja
#> 238                          la Canyada de Beric    Franja
#> 239                                 la Codonyera    Franja
#> 240                                 la Ginebrosa    Franja
#> 241                                 la Sorollera    Franja
#> 242                          la Torre de Vilella    Franja
#> 243                                         Faió    Franja
#> 244                                       Favara    Franja
#> 245                                       Maella    Franja
#> 246                                       Nonasp    Franja
#> 247                                        Fraga    Franja
#> 248                                   Mequinensa    Franja
#> 249                                        Saidí    Franja
#> 250                             Torrent de Cinca    Franja
#> 251                             Vilella de Cinca    Franja
#> 252                                      Albelda    Franja
#> 253                                       Baells    Franja
#> 254                                  Camporrells    Franja
#> 255                                 Castellonroi    Franja
#> 256                                   el Campell    Franja
#> 257                                   el Torricó    Franja
#> 258                          Peralta i Calassanç    Franja
#> 259                       Sant Esteve de Llitera    Franja
#> 260                                Sanui i Alins    Franja
#> 261                           Tamarit de Llitera    Franja
#> 262                                   Valldellou    Franja
#> 263                                     Vensilló    Franja
#> 264                              Arenys de Lledó    Franja
#> 265                                       Beseit    Franja
#> 266                                     Calaceit    Franja
#> 267                                 Fontdespatla    Franja
#> 268                                      Fórnols    Franja
#> 269                                 la Freixneda    Franja
#> 270                                la Portellada    Franja
#> 271                           la Torre del Comte    Franja
#> 272                            la Vall del Tormo    Franja
#> 273                               Lledó d'Algars    Franja
#> 274                                     Massalió    Franja
#> 275                                     Montroig    Franja
#> 276                       Pena-roja de Tastavins    Franja
#> 277                                     Queretes    Franja
#> 278                                       Ràfels    Franja
#> 279                                 Torredarques    Franja
#> 280                               Vall-de-roures    Franja
#> 281                                 Valljunquera    Franja
#> 282                             Areny de Noguera    Franja
#> 283                                    Benavarri    Franja
#> 284                                      Beranui    Franja
#> 285                                      Bonansa    Franja
#> 286                                   Castigaleu    Franja
#> 287                                    Estopanyà    Franja
#> 288                                      Isàvena    Franja
#> 289                                    Lasquarri    Franja
#> 290                                    Les Paüls    Franja
#> 291                          Monesma i Queixigar    Franja
#> 292                                     Montanui    Franja
#> 293                           Pont de Montanyana    Franja
#> 294                                      Sopeira    Franja
#> 295                                        Tolba    Franja
#> 296                                Tor-la-ribera    Franja
#> 297                            Viacamp i Lliterà    Franja
#> 298                                      Eivissa     Illes
#> 299                      Sant Antoni de Portmany     Illes
#> 300                        Sant Joan de Labritja     Illes
#> 301                      Sant Josep de sa Talaia     Illes
#> 302                        Santa Eulària des Riu     Illes
#> 303                                   Formentera     Illes
#> 304                                         Artà     Illes
#> 305                                    Capdepera     Illes
#> 306                                      Manacor     Illes
#> 307                   Sant Llorenç des Cardassar     Illes
#> 308                                  Son Servera     Illes
#> 309                                       Alaior     Illes
#> 310                                   Ciutadella     Illes
#> 311                                   es Castell     Illes
#> 312                                  es Mercadal     Illes
#> 313                              es Migjorn Gran     Illes
#> 314                                    Ferreries     Illes
#> 315                                          Maó     Illes
#> 316                                   Sant Lluís     Illes
#> 317                                       Campos     Illes
#> 318                                     Felanitx     Illes
#> 319                                    Llucmajor     Illes
#> 320                                     Santanyí     Illes
#> 321                                  ses Salines     Illes
#> 322                                        Palma     Illes
#> 323                                      Algaida     Illes
#> 324                                       Ariany     Illes
#> 325                                      Costitx     Illes
#> 326                         Lloret de Vistalegre     Illes
#> 327                                        Llubí     Illes
#> 328                            Maria de la Salut     Illes
#> 329                                     Montuïri     Illes
#> 330                                         Muro     Illes
#> 331                                        Petra     Illes
#> 332                                     Porreres     Illes
#> 333                                    Sant Joan     Illes
#> 334                                Santa Eugènia     Illes
#> 335                              Santa Margalida     Illes
#> 336                                    Sencelles     Illes
#> 337                                        Sineu     Illes
#> 338                         Vilafranca de Bonany     Illes
#> 339                                        Alaró     Illes
#> 340                                      Alcúdia     Illes
#> 341                                   Binissalem     Illes
#> 342                                        Búger     Illes
#> 343                                     Campanet     Illes
#> 344                                      Consell     Illes
#> 345                                         Inca     Illes
#> 346                                      Lloseta     Illes
#> 347                            Mancor de la Vall     Illes
#> 348                                     Marratxí     Illes
#> 349                                     sa Pobla     Illes
#> 350                         Santa Maria del Camí     Illes
#> 351                                        Selva     Illes
#> 352                                      Andratx     Illes
#> 353                                  Banyalbufar     Illes
#> 354                                      Bunyola     Illes
#> 355                                       Calvià     Illes
#> 356                                         Deià     Illes
#> 357                                      Escorca     Illes
#> 358                                     Esporles     Illes
#> 359                                   Estellencs     Illes
#> 360                                    Fornalutx     Illes
#> 361                                     Pollença     Illes
#> 362                                  Puigpunyent     Illes
#> 363                                       Sóller     Illes
#> 364                                  Valldemossa     Illes
#> 365                                  Aiguamúrcia Principat
#> 366                                      Alcover Principat
#> 367                                         Alió Principat
#> 368                                       Bràfim Principat
#> 369                               Cabra del Camp Principat
#> 370                                      el Milà Principat
#> 371                        el Pla de Santa Maria Principat
#> 372                          el Pont d'Armentera Principat
#> 373                                   el Rourell Principat
#> 374                                els Garidells Principat
#> 375                           Figuerola del Camp Principat
#> 376                                      la Masó Principat
#> 377                                      la Riba Principat
#> 378                                     Mont-ral Principat
#> 379                                    Montferri Principat
#> 380                                       Nulles Principat
#> 381                                    Puigpelat Principat
#> 382                                       Querol Principat
#> 383                                      Rodonyà Principat
#> 384                                     Vallmoll Principat
#> 385                                        Valls Principat
#> 386                                  Vila-rodona Principat
#> 387                                    Vilabella Principat
#> 388                                     Agullana Principat
#> 389                                      Albanyà Principat
#> 390                      Avinyonet de Puigventós Principat
#> 391                                      Bàscara Principat
#> 392                                        Biure Principat
#> 393                      Boadella i les Escaules Principat
#> 394                                     Borrassà Principat
#> 395                                   Cabanelles Principat
#> 396                                      Cabanes Principat
#> 397                                     Cadaqués Principat
#> 398                                     Campmany Principat
#> 399                                   Cantallops Principat
#> 400                          Castelló d'Empúries Principat
#> 401                                     Cistella Principat
#> 402                                       Colera Principat
#> 403                                      Darnius Principat
#> 404                             el Far d'Empordà Principat
#> 405                          el Port de la Selva Principat
#> 406                                      Espolla Principat
#> 407                                     Figueres Principat
#> 408                                       Fortià Principat
#> 409                                     Garrigàs Principat
#> 410                                  Garriguella Principat
#> 411                                  l'Armentera Principat
#> 412                                     l'Escala Principat
#> 413                                  la Jonquera Principat
#> 414                              la Selva de Mar Principat
#> 415                                     la Vajol Principat
#> 416                                       Llançà Principat
#> 417                              Lledó d'Empordà Principat
#> 418                                        Llers Principat
#> 419                          Maçanet de Cabrenys Principat
#> 420                         Masarac i Vilarnadal Principat
#> 421                           Mollet de Peralada Principat
#> 422                                       Navata Principat
#> 423                                        Ordis Principat
#> 424                       Palau de Santa Eulàlia Principat
#> 425                              Palau-saverdera Principat
#> 426                                          Pau Principat
#> 427                               Pedret i Marzà Principat
#> 428                                     Peralada Principat
#> 429                               Pont de Molins Principat
#> 430                                       Pontós Principat
#> 431                                      Portbou Principat
#> 432                                        Rabós Principat
#> 433                                      Riumors Principat
#> 434                                        Roses Principat
#> 435                        Sant Climent Sescebes Principat
#> 436                      Sant Llorenç de la Muga Principat
#> 437                        Sant Miquel de Fluvià Principat
#> 438                                    Sant Mori Principat
#> 439                           Sant Pere Pescador Principat
#> 440                      Santa Llogaia d'Àlguema Principat
#> 441                  Saus, Camallera i Llampaies Principat
#> 442                                      Siurana Principat
#> 443                                     Terrades Principat
#> 444                          Torroella de Fluvià Principat
#> 445                                     Ventalló Principat
#> 446                                   Vila-sacra Principat
#> 447                                  Vilabertran Principat
#> 448                                    Viladamat Principat
#> 449                                     Vilafant Principat
#> 450                                    Vilajuïga Principat
#> 451                                  Vilamacolum Principat
#> 452                                    Vilamalla Principat
#> 453                                 Vilamaniscle Principat
#> 454                                     Vilanant Principat
#> 455                                       Vilaür Principat
#> 456                        Avinyonet del Penedès Principat
#> 457                        Castellet i la Gornal Principat
#> 458                        Castellví de la Marca Principat
#> 459                           el Pla del Penedès Principat
#> 460                                    Font-rubí Principat
#> 461                                       Gelida Principat
#> 462                                   la Granada Principat
#> 463                                 les Cabanyes Principat
#> 464                                      Mediona Principat
#> 465                                     Olèrdola Principat
#> 466                          Olesa de Bonesvalls Principat
#> 467                             Pacs del Penedès Principat
#> 468                                      Pontons Principat
#> 469                                   Puigdàlber Principat
#> 470                      Sant Cugat Sesgarrigues Principat
#> 471                       Sant Llorenç d'Hortons Principat
#> 472                           Sant Martí Sarroca Principat
#> 473                    Sant Pere de Riudebitlles Principat
#> 474                       Sant Quintí de Mediona Principat
#> 475                         Sant Sadurní d'Anoia Principat
#> 476                         Santa Fe del Penedès Principat
#> 477                 Santa Margarida i els Monjos Principat
#> 478                                     Subirats Principat
#> 479                           Terrassola i Lavit Principat
#> 480                            Torrelles de Foix Principat
#> 481                       Vilafranca del Penedès Principat
#> 482                           Vilobí del Penedès Principat
#> 483                                  Alàs i Cerc Principat
#> 484                                     Arsèguel Principat
#> 485                                     Bassella Principat
#> 486                                         Cabó Principat
#> 487                                         Cava Principat
#> 488                                Coll de Nargó Principat
#> 489                               el Pont de Bar Principat
#> 490                                    Estamariu Principat
#> 491                              Fígols i Alinyà Principat
#> 492                                Josa i Tuixén Principat
#> 493                              la Seu d'Urgell Principat
#> 494                           la Vansa i Fórnols Principat
#> 495                          les Valls d'Aguilar Principat
#> 496                          les Valls de Valira Principat
#> 497                       Montferrer i Castellbò Principat
#> 498                                       Oliana Principat
#> 499                                      Organyà Principat
#> 500                                     Peramola Principat
#> 501                            Ribera d'Urgellet Principat
#> 502                             el Pont de Suert Principat
#> 503                               la Vall de Boí Principat
#> 504                                     Vilaller Principat
#> 505                                    Argençola Principat
#> 506                                     Bellprat Principat
#> 507                              Cabrera d'Anoia Principat
#> 508                                        Calaf Principat
#> 509                           Calonge de Segarra Principat
#> 510                                   Capellades Principat
#> 511                                        Carme Principat
#> 512                   Castellfollit de Riubregós Principat
#> 513                                   Castellolí Principat
#> 514                                       Copons Principat
#> 515                                      el Bruc Principat
#> 516                     els Hostalets de Pierola Principat
#> 517                             els Prats de Rei Principat
#> 518                                     Igualada Principat
#> 519                                        Jorba Principat
#> 520                                   la Llacuna Principat
#> 521                        la Pobla de Claramunt Principat
#> 522                        la Torre de Claramunt Principat
#> 523                                     Masquefa Principat
#> 524                                    Montmaneu Principat
#> 525                                        Òdena Principat
#> 526                                         Orpí Principat
#> 527                                        Piera Principat
#> 528                                       Pujalt Principat
#> 529                                        Rubió Principat
#> 530                           Sant Martí de Tous Principat
#> 531                       Sant Martí Sesgueioles Principat
#> 532                        Sant Pere Sallavinera Principat
#> 533                   Santa Margarida de Montbui Principat
#> 534                      Santa Maria de Miralles Principat
#> 535                             Vallbona d'Anoia Principat
#> 536                                      Veciana Principat
#> 537                            Vilanova del Camí Principat
#> 538                           Aguilar de Segarra Principat
#> 539                                        Artés Principat
#> 540                                       Avinyó Principat
#> 541                                    Balsareny Principat
#> 542                                       Callús Principat
#> 543                                      Cardona Principat
#> 544                       Castellbell i el Vilar Principat
#> 545                       Castellfollit del Boix Principat
#> 546                                  Castellgalí Principat
#> 547                          Castellnou de Bages Principat
#> 548               el Pont de Vilomara i Rocafort Principat
#> 549                                    Fonollosa Principat
#> 550                                         Gaià Principat
#> 551                                      Manresa Principat
#> 552                                    Marganell Principat
#> 553                      Monistrol de Montserrat Principat
#> 554                                         Mura Principat
#> 555                                    Navarcles Principat
#> 556                                       Navars Principat
#> 557                                     Rajadell Principat
#> 558                                      Sallent Principat
#> 559                          Sant Feliu Sasserra Principat
#> 560                        Sant Fruitós de Bages Principat
#> 561                     Sant Joan de Vilatorrada Principat
#> 562                          Sant Mateu de Bages Principat
#> 563                   Sant Salvador de Guardiola Principat
#> 564                     Sant Vicenç de Castellet Principat
#> 565                                    Santpedor Principat
#> 566                                        Súria Principat
#> 567                                    Talamanca Principat
#> 568                                      Alforja Principat
#> 569                                     Almoster Principat
#> 570                                       Arbolí Principat
#> 571                                     Botarell Principat
#> 572                                     Cambrils Principat
#> 573                                    Capafonts Principat
#> 574                         Castellvell del Camp Principat
#> 575                                    Colldejou Principat
#> 576                                   Duesaigües Principat
#> 577                                     l'Albiol Principat
#> 578                                    l'Aleixar Principat
#> 579                                  l'Argentera Principat
#> 580                                     la Febró Principat
#> 581                            la Selva del Camp Principat
#> 582                          les Borges del Camp Principat
#> 583                                    Maspujols Principat
#> 584                           Mont-roig del Camp Principat
#> 585                            Montbrió del Camp Principat
#> 586                                       Prades Principat
#> 587                                      Pratdip Principat
#> 588                                         Reus Principat
#> 589                                  Riudecanyes Principat
#> 590                                    Riudecols Principat
#> 591                                      Riudoms Principat
#> 592         Vandellòs i l'Hospitalet de l'Infant Principat
#> 593                       Vilanova d'Escornalbou Principat
#> 594                                    Vilaplana Principat
#> 595                           Vinyols i els Arcs Principat
#> 596                                      Aldover Principat
#> 597                             Alfara de Carles Principat
#> 598                                   Benifallet Principat
#> 599                                     Camarles Principat
#> 600                                     Deltebre Principat
#> 601                                   el Perelló Principat
#> 602                                      l'Aldea Principat
#> 603                             l'Ametlla de Mar Principat
#> 604                                    l'Ampolla Principat
#> 605                                        Paüls Principat
#> 606                                     Roquetes Principat
#> 607                                      Tivenys Principat
#> 608                                      Tortosa Principat
#> 609                                        Xerta Principat
#> 610                                       Albons Principat
#> 611                                        Begur Principat
#> 612                          Bellcaire d'Empordà Principat
#> 613                        Calonge i Sant Antoni Principat
#> 614        Castell d'Aro, Platja d'Aro i s'Agaró Principat
#> 615                                     Colomers Principat
#> 616                                        Corçà Principat
#> 617  Cruïlles, Monells i Sant Sadurní de l'Heura Principat
#> 618                                        Foixà Principat
#> 619                                  Fontanilles Principat
#> 620                                   Garrigoles Principat
#> 621                                       Gualta Principat
#> 622                                        Jafre Principat
#> 623                          la Bisbal d'Empordà Principat
#> 624                                      la Pera Principat
#> 625                         la Tallada d'Empordà Principat
#> 626                                     Mont-ras Principat
#> 627                                  Palafrugell Principat
#> 628                                      Palamós Principat
#> 629                                  Palau-sator Principat
#> 630                                         Pals Principat
#> 631                                      Parlavà Principat
#> 632                                     Regencós Principat
#> 633                                        Rupià Principat
#> 634                        Sant Feliu de Guíxols Principat
#> 635                         Santa Cristina d'Aro Principat
#> 636                                Serra de Daró Principat
#> 637                                      Torrent Principat
#> 638                         Torroella de Montgrí Principat
#> 639                                         Ullà Principat
#> 640                                    Ullastret Principat
#> 641                                    Ultramort Principat
#> 642                                Vall-llobrega Principat
#> 643                                       Verges Principat
#> 644                                     Vilopriu Principat
#> 645             Vulpellac, Fonteta i Peratallada Principat
#> 646                                       Abrera Principat
#> 647                                       Begues Principat
#> 648                                Castelldefels Principat
#> 649                         Castellví de Rosanes Principat
#> 650                                     Cervelló Principat
#> 651                                     Collbató Principat
#> 652                         Corbera de Llobregat Principat
#> 653                        Cornellà de Llobregat Principat
#> 654                                    el Papiol Principat
#> 655                         el Prat de Llobregat Principat
#> 656                                 Esparreguera Principat
#> 657                       Esplugues de Llobregat Principat
#> 658                                         Gavà Principat
#> 659                         la Palma de Cervelló Principat
#> 660                                    Martorell Principat
#> 661                                Molins de Rei Principat
#> 662                          Olesa de Montserrat Principat
#> 663                                      Pallejà Principat
#> 664                      Sant Andreu de la Barca Principat
#> 665                        Sant Boi de Llobregat Principat
#> 666                    Sant Climent de Llobregat Principat
#> 667                       Sant Esteve Sesrovires Principat
#> 668                      Sant Feliu de Llobregat Principat
#> 669                              Sant Joan Despí Principat
#> 670                            Sant Just Desvern Principat
#> 671                       Sant Vicenç dels Horts Principat
#> 672                     Santa Coloma de Cervelló Principat
#> 673                       Torrelles de Llobregat Principat
#> 674                                    Vallirana Principat
#> 675                                   Viladecans Principat
#> 676                                    Albinyana Principat
#> 677                         Banyeres del Penedès Principat
#> 678                                      Bellvei Principat
#> 679                                     Bonastre Principat
#> 680                                     Calafell Principat
#> 681                                        Cunit Principat
#> 682                                  el Montmell Principat
#> 683                                  el Vendrell Principat
#> 684                                      l'Arboç Principat
#> 685                        la Bisbal del Penedès Principat
#> 686                          Llorenç del Penedès Principat
#> 687                                   Masllorenç Principat
#> 688                      Sant Jaume dels Domenys Principat
#> 689                                  Santa Oliva Principat
#> 690                                     Badalona Principat
#> 691                                    Barcelona Principat
#> 692                    l'Hospitalet de Llobregat Principat
#> 693                          Sant Adrià de Besòs Principat
#> 694                     Santa Coloma de Gramenet Principat
#> 695                                         Avià Principat
#> 696                                         Bagà Principat
#> 697                                        Berga Principat
#> 698                                      Borredà Principat
#> 699                                      Capolat Principat
#> 700                                    Casserres Principat
#> 701                           Castell de l'Areny Principat
#> 702                           Castellar de n'Hug Principat
#> 703                            Castellar del Riu Principat
#> 704                                        Cercs Principat
#> 705                                       Fígols Principat
#> 706                                    Gironella Principat
#> 707                                   Gisclareny Principat
#> 708                                        Gósol Principat
#> 709                        Guardiola de Berguedà Principat
#> 710                                  l'Espunyola Principat
#> 711                           la Nou de Berguedà Principat
#> 712                           la Pobla de Lillet Principat
#> 713                                      la Quar Principat
#> 714                                     Montclar Principat
#> 715                                    Montmajor Principat
#> 716                                        Olvan Principat
#> 717                                    Puig-reig Principat
#> 718                                        Sagàs Principat
#> 719                                       Saldes Principat
#> 720                      Sant Jaume de Frontanyà Principat
#> 721                     Sant Julià de Cerdanyola Principat
#> 722                        Santa Maria de Merlès Principat
#> 723                                    Vallcebre Principat
#> 724                                       Vilada Principat
#> 725                            Viver i Serrateix Principat
#> 726                                          Alp Principat
#> 727                          Bellver de Cerdanya Principat
#> 728                                       Bolvir Principat
#> 729                                          Das Principat
#> 730                        Fontanals de Cerdanya Principat
#> 731                                          Ger Principat
#> 732                            Guils de Cerdanya Principat
#> 733                                       Isòvol Principat
#> 734                             Lles de Cerdanya Principat
#> 735                                       Llívia Principat
#> 736                                     Meranges Principat
#> 737                          Montellà i Martinet Principat
#> 738                               Prats i Sansor Principat
#> 739                                     Prullans Principat
#> 740                                    Puigcerdà Principat
#> 741                              Riu de Cerdanya Principat
#> 742                                         Urús Principat
#> 743                          Barberà de la Conca Principat
#> 744                                   Blancafort Principat
#> 745                                       Conesa Principat
#> 746                                        Forès Principat
#> 747                        l'Espluga de Francolí Principat
#> 748                                    les Piles Principat
#> 749                                       Llorac Principat
#> 750                                    Montblanc Principat
#> 751                         Passanant i Belltall Principat
#> 752                                         Pira Principat
#> 753                                      Pontils Principat
#> 754                          Rocafort de Queralt Principat
#> 755                      Santa Coloma de Queralt Principat
#> 756                                       Sarral Principat
#> 757                           Savallà del Comtat Principat
#> 758                                        Senan Principat
#> 759                                    Solivella Principat
#> 760                                    Vallclara Principat
#> 761                        Vallfogona de Riucorb Principat
#> 762                           Vilanova de Prades Principat
#> 763                                     Vilaverd Principat
#> 764                             Vimbodí i Poblet Principat
#> 765                                    Canyelles Principat
#> 766                                     Cubelles Principat
#> 767                                     Olivella Principat
#> 768                           Sant Pere de Ribes Principat
#> 769                                       Sitges Principat
#> 770                         Vilanova i la Geltrú Principat
#> 771                                       Arbeca Principat
#> 772                                  Bellaguarda Principat
#> 773                                       Bovera Principat
#> 774                                  Castelldans Principat
#> 775                      Cervià de les Garrigues Principat
#> 776                                     el Cogul Principat
#> 777                                   el Soleràs Principat
#> 778                                  el Vilosell Principat
#> 779                                 els Omellons Principat
#> 780                                    els Torms Principat
#> 781                                      Fulleda Principat
#> 782                    Granyena de les Garrigues Principat
#> 783                                      Juncosa Principat
#> 784                                       Juneda Principat
#> 785                                    l'Albagés Principat
#> 786                                       l'Albi Principat
#> 787                              l'Espluga Calba Principat
#> 788                                  la Floresta Principat
#> 789                                la Granadella Principat
#> 790                         la Pobla de Cérvoles Principat
#> 791                          les Borges Blanques Principat
#> 792                                     Puiggròs Principat
#> 793                                       Tarrés Principat
#> 794                                      Vinaixa Principat
#> 795                                   Argelaguer Principat
#> 796                                       Besalú Principat
#> 797                                        Beuda Principat
#> 798                     Castellfollit de la Roca Principat
#> 799                             la Vall d'en Bas Principat
#> 800                            la Vall de Bianya Principat
#> 801                        les Planes d'Hostoles Principat
#> 802                                   les Preses Principat
#> 803                              Maià de Montcal Principat
#> 804                                       Mieres Principat
#> 805                               Montagut i Oix Principat
#> 806                                         Olot Principat
#> 807                                     Riudaura Principat
#> 808                             Sales de Llierca Principat
#> 809                      Sant Aniol de Finestres Principat
#> 810                      Sant Feliu de Pallerols Principat
#> 811                                 Sant Ferriol Principat
#> 812                        Sant Jaume de Llierca Principat
#> 813                          Sant Joan les Fonts Principat
#> 814                                    Santa Pau Principat
#> 815                                     Tortellà Principat
#> 816                                    Aiguaviva Principat
#> 817                                      Bescanó Principat
#> 818                                      Bordils Principat
#> 819                                    Campllong Principat
#> 820                                 Canet d'Adri Principat
#> 821                            Cassà de la Selva Principat
#> 822                                        Celrà Principat
#> 823                                Cervià de Ter Principat
#> 824                                        Flaçà Principat
#> 825                         Fornells de la Selva Principat
#> 826                                       Girona Principat
#> 827                                         Juià Principat
#> 828                                   Llagostera Principat
#> 829                                   Llambilles Principat
#> 830                                   Madremanya Principat
#> 831                                        Quart Principat
#> 832                                         Salt Principat
#> 833                            Sant Andreu Salou Principat
#> 834                                 Sant Gregori Principat
#> 835                          Sant Joan de Mollet Principat
#> 836                          Sant Jordi Desvalls Principat
#> 837                          Sant Julià de Ramis Principat
#> 838                        Sant Martí de Llémena Principat
#> 839                              Sant Martí Vell Principat
#> 840                                Sarrià de Ter Principat
#> 841                                  Vilablareix Principat
#> 842                                   Viladasens Principat
#> 843                                       Alpens Principat
#> 844                                        Lluçà Principat
#> 845                                        Olost Principat
#> 846                                       Oristà Principat
#> 847                                     Perafita Principat
#> 848                            Prats de Lluçanès Principat
#> 849                          Sant Martí d'Albars Principat
#> 850                                    Sobremunt Principat
#> 851                                       Alella Principat
#> 852                                Arenys de Mar Principat
#> 853                               Arenys de Munt Principat
#> 854                                    Argentona Principat
#> 855                               Cabrera de Mar Principat
#> 856                                      Cabrils Principat
#> 857                              Caldes d'Estrac Principat
#> 858                                      Calella Principat
#> 859                                 Canet de Mar Principat
#> 860                                      Dosrius Principat
#> 861                                    el Masnou Principat
#> 862                               Malgrat de Mar Principat
#> 863                                       Mataró Principat
#> 864                                      Montgat Principat
#> 865                                       Òrrius Principat
#> 866                                    Palafolls Principat
#> 867                                Pineda de Mar Principat
#> 868                               Premià de Dalt Principat
#> 869                                Premià de Mar Principat
#> 870                    Sant Andreu de Llavaneres Principat
#> 871                      Sant Cebrià de Vallalta Principat
#> 872                       Sant Iscle de Vallalta Principat
#> 873                              Sant Pol de Mar Principat
#> 874                       Sant Vicenç de Montalt Principat
#> 875                                Santa Susanna Principat
#> 876                                         Teià Principat
#> 877                                        Tiana Principat
#> 878                                      Tordera Principat
#> 879                             Vilassar de Dalt Principat
#> 880                              Vilassar de Mar Principat
#> 881                                      Calders Principat
#> 882                                   Castellcir Principat
#> 883                                Castellterçol Principat
#> 884                                  Collsuspina Principat
#> 885                                      Granera Principat
#> 886                                     l'Estany Principat
#> 887                                         Moià Principat
#> 888                         Monistrol de Calders Principat
#> 889                           Sant Quirze Safaja Principat
#> 890                            Santa Maria d'Oló Principat
#> 891                                      Alcanar Principat
#> 892                                      Amposta Principat
#> 893                                    Freginals Principat
#> 894                                       Godall Principat
#> 895                                    la Galera Principat
#> 896                                    la Ràpita Principat
#> 897                                     la Sénia Principat
#> 898                             Mas de Barberans Principat
#> 899                                  Masdenverge Principat
#> 900                          Sant Jaume d'Enveja Principat
#> 901                                Santa Bàrbara Principat
#> 902                                    Ulldecona Principat
#> 903                                         Àger Principat
#> 904                                       Albesa Principat
#> 905                                      Algerri Principat
#> 906                             Alòs de Balaguer Principat
#> 907                              Artesa de Segre Principat
#> 908                                     Balaguer Principat
#> 909                           Bellcaire d'Urgell Principat
#> 910                            Bellmunt d'Urgell Principat
#> 911                                   Cabanabona Principat
#> 912                                     Camarasa Principat
#> 913                         Castelló de Farfanya Principat
#> 914                                      Cubells Principat
#> 915                                     Foradada Principat
#> 916                             Ivars de Noguera Principat
#> 917                          la Baronia de Rialb Principat
#> 918                             la Sentiu de Sió Principat
#> 919                  les Avellanes i Santa Linya Principat
#> 920                                   Menàrguens Principat
#> 921                                      Montgai Principat
#> 922                                       Oliola Principat
#> 923                               Os de Balaguer Principat
#> 924                                     Penelles Principat
#> 925                                        Ponts Principat
#> 926                                     Preixens Principat
#> 927                                      Térmens Principat
#> 928                                      Tiurana Principat
#> 929                                   Torrelameu Principat
#> 930                       Vallfogona de Balaguer Principat
#> 931                          Vilanova de l'Aguda Principat
#> 932                             Vilanova de Meià Principat
#> 933                                      Balenyà Principat
#> 934                                  Calldetenes Principat
#> 935                                    Centelles Principat
#> 936                                     el Brull Principat
#> 937                                   Espinelves Principat
#> 938                                  Folgueroles Principat
#> 939                                         Gurb Principat
#> 940                                   l'Esquirol Principat
#> 941                           les Masies de Roda Principat
#> 942                       les Masies de Voltregà Principat
#> 943                                        Malla Principat
#> 944                                      Manlleu Principat
#> 945                                   Montesquiu Principat
#> 946                                   Muntanyola Principat
#> 947                                         Orís Principat
#> 948                                  Roda de Ter Principat
#> 949                                Rupit i Pruit Principat
#> 950                      Sant Agustí de Lluçanès Principat
#> 951                       Sant Bartomeu del Grau Principat
#> 952                         Sant Boi de Lluçanès Principat
#> 953                     Sant Hipòlit de Voltregà Principat
#> 954                      Sant Julià de Vilatorta Principat
#> 955                      Sant Martí de Centelles Principat
#> 956                         Sant Pere de Torelló Principat
#> 957                        Sant Quirze de Besora Principat
#> 958                      Sant Sadurní d'Osormort Principat
#> 959                       Sant Vicenç de Torelló Principat
#> 960                    Santa Cecília de Voltregà Principat
#> 961                       Santa Eugènia de Berga Principat
#> 962                   Santa Eulàlia de Riuprimer Principat
#> 963                        Santa Maria de Besora Principat
#> 964                                         Seva Principat
#> 965                                         Sora Principat
#> 966                                     Taradell Principat
#> 967                                   Tavèrnoles Principat
#> 968                                     Tavertet Principat
#> 969                                         Tona Principat
#> 970                                      Torelló Principat
#> 971                                          Vic Principat
#> 972                                        Vidrà Principat
#> 973                                     Viladrau Principat
#> 974                              Vilanova de Sau Principat
#> 975                           Abella de la Conca Principat
#> 976                               Castell de Mur Principat
#> 977                                Conca de Dalt Principat
#> 978                            Gavet de la Conca Principat
#> 979                          Isona i Conca Dellà Principat
#> 980                            la Pobla de Segur Principat
#> 981                         la Torre de Cabdella Principat
#> 982                                     Llimiana Principat
#> 983                             Salàs de Pallars Principat
#> 984                      Sant Esteve de la Sarga Principat
#> 985                           Sarroca de Bellera Principat
#> 986                                    Senterada Principat
#> 987                                       Talarn Principat
#> 988                                        Tremp Principat
#> 989                                        Alins Principat
#> 990                                     Alt Àneu Principat
#> 991                                 Baix Pallars Principat
#> 992                                        Espot Principat
#> 993                               Esterri d'Àneu Principat
#> 994                            Esterri de Cardós Principat
#> 995                                      Farrera Principat
#> 996                          la Guingueta d'Àneu Principat
#> 997                                     Lladorre Principat
#> 998                                     Llavorsí Principat
#> 999                                        Rialb Principat
#> 1000                                   Soriguera Principat
#> 1001                                        Sort Principat
#> 1002                                      Tírvia Principat
#> 1003                              Vall de Cardós Principat
#> 1004                                     Barbens Principat
#> 1005                          Bell-lloc d'Urgell Principat
#> 1006                                     Bellvís Principat
#> 1007                         Castellnou de Seana Principat
#> 1008                        el Palau d'Anglesola Principat
#> 1009                                     el Poal Principat
#> 1010                                  Fondarella Principat
#> 1011                                      Golmés Principat
#> 1012                              Ivars d'Urgell Principat
#> 1013                                     Linyola Principat
#> 1014                                   Miralcamp Principat
#> 1015                                  Mollerussa Principat
#> 1016                                     Sidamon Principat
#> 1017                                 Torregrossa Principat
#> 1018                                   Vila-sana Principat
#> 1019                        Vilanova de Bellpuig Principat
#> 1020                                    Banyoles Principat
#> 1021                                       Camós Principat
#> 1022                          Cornellà del Terri Principat
#> 1023                                     Crespià Principat
#> 1024                                   Esponellà Principat
#> 1025                                 Fontcoberta Principat
#> 1026                           Palol de Revardit Principat
#> 1027                                   Porqueres Principat
#> 1028                    Sant Miquel de Campmajor Principat
#> 1029                                     Serinyà Principat
#> 1030                                  Vilademuls Principat
#> 1031                        Bellmunt del Priorat Principat
#> 1032                                   Cabassers Principat
#> 1033                                    Capçanes Principat
#> 1034                      Cornudella de Montsant Principat
#> 1035                                    el Lloar Principat
#> 1036                                  el Masroig Principat
#> 1037                                    el Molar Principat
#> 1038                                els Guiamets Principat
#> 1039                                      Falset Principat
#> 1040                                  Gratallops Principat
#> 1041                       la Bisbal de Montsant Principat
#> 1042                                  la Figuera Principat
#> 1043                       la Morera de Montsant Principat
#> 1044                     la Torre de Fontaubella Principat
#> 1045                             la Vilella Alta Principat
#> 1046                            la Vilella Baixa Principat
#> 1047                                       Marçà Principat
#> 1048                                    Margalef Principat
#> 1049                                    Poboleda Principat
#> 1050                                     Porrera Principat
#> 1051                       Pradell de la Teixeta Principat
#> 1052                         Torroja del Priorat Principat
#> 1053                                 Ulldemolins Principat
#> 1054                                        Ascó Principat
#> 1055                                  Benissanet Principat
#> 1056                                        Flix Principat
#> 1057                                      Garcia Principat
#> 1058                                    Ginestar Principat
#> 1059                             la Palma d'Ebre Principat
#> 1060                      la Torre de l'Espanyol Principat
#> 1061                                     Miravet Principat
#> 1062                                 Móra d'Ebre Principat
#> 1063                                Móra la Nova Principat
#> 1064                                    Rasquera Principat
#> 1065                            Riba-roja d'Ebre Principat
#> 1066                                     Tivissa Principat
#> 1067                                     Vinebre Principat
#> 1068                                 Campdevànol Principat
#> 1069                                   Campelles Principat
#> 1070                                   Camprodon Principat
#> 1071                                     Gombrèn Principat
#> 1072                                 les Llosses Principat
#> 1073                                     Llanars Principat
#> 1074                                       Molló Principat
#> 1075                                      Ogassa Principat
#> 1076                                    Pardines Principat
#> 1077                                    Planoles Principat
#> 1078                                    Queralbs Principat
#> 1079                             Ribes de Freser Principat
#> 1080                                      Ripoll Principat
#> 1081                  Sant Joan de les Abadesses Principat
#> 1082                        Sant Pau de Segúries Principat
#> 1083                                    Setcases Principat
#> 1084                                       Toses Principat
#> 1085                      Vallfogona de Ripollès Principat
#> 1086                           Vilallonga de Ter Principat
#> 1087                                      Biosca Principat
#> 1088                                     Cervera Principat
#> 1089                            els Plans de Sió Principat
#> 1090                                     Estaràs Principat
#> 1091                                 Granyanella Principat
#> 1092                         Granyena de Segarra Principat
#> 1093                                    Guissona Principat
#> 1094                                      Ivorra Principat
#> 1095                                  les Oluges Principat
#> 1096                                  Massoteres Principat
#> 1097                         Montoliu de Segarra Principat
#> 1098                        Montornès de Segarra Principat
#> 1099                             Ribera d'Ondara Principat
#> 1100                                     Sanaüja Principat
#> 1101                      Sant Guim de Freixenet Principat
#> 1102                       Sant Guim de la Plana Principat
#> 1103                                  Sant Ramon Principat
#> 1104                                    Talavera Principat
#> 1105                          Tarroja de Segarra Principat
#> 1106                                        Torà Principat
#> 1107                       Torrefeta i Florejacs Principat
#> 1108                                      Aitona Principat
#> 1109                                  Albatàrrec Principat
#> 1110                                      Alcanó Principat
#> 1111                                    Alcarràs Principat
#> 1112                                   Alcoletge Principat
#> 1113                                    Alfarràs Principat
#> 1114                                       Alfés Principat
#> 1115                                    Alguaire Principat
#> 1116                                  Almacelles Principat
#> 1117                                    Almatret Principat
#> 1118                                     Almenar Principat
#> 1119                                     Alpicat Principat
#> 1120                            Artesa de Lleida Principat
#> 1121                                        Aspa Principat
#> 1122                          Benavent de Segrià Principat
#> 1123                                     Corbins Principat
#> 1124                                  els Alamús Principat
#> 1125               Gimenells i el Pla de la Font Principat
#> 1126                          la Granja d'Escarp Principat
#> 1127                                 la Portella Principat
#> 1128                                  Llardecans Principat
#> 1129                                      Lleida Principat
#> 1130                                      Maials Principat
#> 1131                                Massalcoreig Principat
#> 1132                          Montoliu de Lleida Principat
#> 1133                          Puigverd de Lleida Principat
#> 1134                                    Rosselló Principat
#> 1135                           Sarroca de Lleida Principat
#> 1136                                       Seròs Principat
#> 1137                                       Soses Principat
#> 1138                                    Sudanell Principat
#> 1139                                      Sunyer Principat
#> 1140                                Torre-serona Principat
#> 1141                                 Torrebesses Principat
#> 1142                                Torrefarrera Principat
#> 1143                             Torres de Segre Principat
#> 1144                        Vilanova de la Barca Principat
#> 1145                          Vilanova de Segrià Principat
#> 1146                                        Amer Principat
#> 1147                                      Anglès Principat
#> 1148                                    Arbúcies Principat
#> 1149                                      Blanes Principat
#> 1150                                       Breda Principat
#> 1151               Brunyola i Sant Martí Sapresa Principat
#> 1152                         Caldes de Malavella Principat
#> 1153                          Fogars de la Selva Principat
#> 1154                                   Hostalric Principat
#> 1155                           la Cellera de Ter Principat
#> 1156                               Lloret de Mar Principat
#> 1157                                     Maçanes Principat
#> 1158                         Maçanet de la Selva Principat
#> 1159                                        Osor Principat
#> 1160                            Riells i Viabrea Principat
#> 1161                                  Riudarenes Principat
#> 1162                      Riudellots de la Selva Principat
#> 1163                     Sant Feliu de Buixalleu Principat
#> 1164                          Sant Hilari Sacalm Principat
#> 1165               Sant Julià del Llor i Bonmatí Principat
#> 1166                     Santa Coloma de Farners Principat
#> 1167                                        Sils Principat
#> 1168                                    Susqueda Principat
#> 1169                                Tossa de Mar Principat
#> 1170                                    Vidreres Principat
#> 1171                              Vilobí d'Onyar Principat
#> 1172                      Castellar de la Ribera Principat
#> 1173                        Clariana de Cardener Principat
#> 1174                                     Guixers Principat
#> 1175                          la Coma i la Pedra Principat
#> 1176                                  la Molsosa Principat
#> 1177                                     Lladurs Principat
#> 1178                                     Llobera Principat
#> 1179                                       Navès Principat
#> 1180                                        Odèn Principat
#> 1181                                       Olius Principat
#> 1182                          Pinell de Solsonès Principat
#> 1183                                       Pinós Principat
#> 1184                                       Riner Principat
#> 1185                     Sant Llorenç de Morunys Principat
#> 1186                                     Solsona Principat
#> 1187                                   Altafulla Principat
#> 1188                                   Constantí Principat
#> 1189                                    Creixell Principat
#> 1190                                  el Catllar Principat
#> 1191                                   el Morell Principat
#> 1192                              els Pallaresos Principat
#> 1193                                  la Canonja Principat
#> 1194                              la Nou de Gaià Principat
#> 1195                         la Pobla de Mafumet Principat
#> 1196                       la Pobla de Montornès Principat
#> 1197                            la Riera de Gaià Principat
#> 1198                                  la Secuita Principat
#> 1199                                    Perafort Principat
#> 1200                                       Renau Principat
#> 1201                                Roda de Berà Principat
#> 1202                                      Salomó Principat
#> 1203                                       Salou Principat
#> 1204                                   Tarragona Principat
#> 1205                               Torredembarra Principat
#> 1206                            Vespella de Gaià Principat
#> 1207                                   Vila-seca Principat
#> 1208                         Vilallonga del Camp Principat
#> 1209                                       Arnes Principat
#> 1210                                       Batea Principat
#> 1211                                         Bot Principat
#> 1212                                     Caseres Principat
#> 1213                              Corbera d'Ebre Principat
#> 1214                           el Pinell de Brai Principat
#> 1215                                     Gandesa Principat
#> 1216                          Horta de Sant Joan Principat
#> 1217                                la Fatarella Principat
#> 1218                       la Pobla de Massaluca Principat
#> 1219                               Prat de Comte Principat
#> 1220                           Vilalba dels Arcs Principat
#> 1221                                    Agramunt Principat
#> 1222                                   Anglesola Principat
#> 1223                                    Belianes Principat
#> 1224                                    Bellpuig Principat
#> 1225                                 Castellserà Principat
#> 1226                                  Ciutadilla Principat
#> 1227                       els Omells de na Gaia Principat
#> 1228                                     Guimerà Principat
#> 1229                                  la Fuliola Principat
#> 1230                                       Maldà Principat
#> 1231                                       Nalec Principat
#> 1232                                 Ossó de Sió Principat
#> 1233                                    Preixana Principat
#> 1234                         Puigverd d'Agramunt Principat
#> 1235                       Sant Martí de Riucorb Principat
#> 1236                                     Tàrrega Principat
#> 1237                                   Tornabous Principat
#> 1238                      Vallbona de les Monges Principat
#> 1239                                       Verdú Principat
#> 1240                                  Vilagrassa Principat
#> 1241                            Badia del Vallès Principat
#> 1242                          Barberà del Vallès Principat
#> 1243                        Castellar del Vallès Principat
#> 1244                               Castellbisbal Principat
#> 1245                       Cerdanyola del Vallès Principat
#> 1246                                     Gallifa Principat
#> 1247                                  Matadepera Principat
#> 1248                           Montcada i Reixac Principat
#> 1249                    Palau-solità i Plegamans Principat
#> 1250                                     Polinyà Principat
#> 1251                                   Rellinars Principat
#> 1252                                    Ripollet Principat
#> 1253                                        Rubí Principat
#> 1254                                    Sabadell Principat
#> 1255                       Sant Cugat del Vallès Principat
#> 1256                         Sant Llorenç Savall Principat
#> 1257                      Sant Quirze del Vallès Principat
#> 1258                    Santa Perpètua de Mogoda Principat
#> 1259                                   Sentmenat Principat
#> 1260                                    Terrassa Principat
#> 1261                                  Ullastrell Principat
#> 1262                                  Vacarisses Principat
#> 1263                               Viladecavalls Principat
#> 1264                                  Aiguafreda Principat
#> 1265                     Bigues i Riells del Fai Principat
#> 1266                           Caldes de Montbui Principat
#> 1267                                     Campins Principat
#> 1268                                  Canovelles Principat
#> 1269                           Cànoves i Samalús Principat
#> 1270                                    Cardedeu Principat
#> 1271                       el Figueró i Montmany Principat
#> 1272                          Fogars de Montclús Principat
#> 1273                                  Granollers Principat
#> 1274                                      Gualba Principat
#> 1275                        l'Ametlla del Vallès Principat
#> 1276                                  la Garriga Principat
#> 1277                                 la Llagosta Principat
#> 1278                          la Roca del Vallès Principat
#> 1279                   les Franqueses del Vallès Principat
#> 1280                               Lliçà d'Amunt Principat
#> 1281                               Lliçà de Vall Principat
#> 1282                          Llinars del Vallès Principat
#> 1283                                 Martorelles Principat
#> 1284                           Mollet del Vallès Principat
#> 1285                                    Montmeló Principat
#> 1286                        Montornès del Vallès Principat
#> 1287                                    Montseny Principat
#> 1288                           Parets del Vallès Principat
#> 1289                    Sant Antoni de Vilamajor Principat
#> 1290                                 Sant Celoni Principat
#> 1291                 Sant Esteve de Palautordera Principat
#> 1292                       Sant Feliu de Codines Principat
#> 1293                  Sant Fost de Campsentelles Principat
#> 1294                      Sant Pere de Vilamajor Principat
#> 1295                    Santa Eulàlia de Ronçana Principat
#> 1296                  Santa Maria de Martorelles Principat
#> 1297                 Santa Maria de Palautordera Principat
#> 1298                                  Tagamanent Principat
#> 1299                                Vallgorguina Principat
#> 1300                                 Vallromanes Principat
#> 1301                            Vilalba Sasserra Principat
#> 1302                         Vilanova del Vallès Principat
#> 1303                                    València        PV
#> 1304                            Alcalà de Xivert        PV
#> 1305                                   Benicarló        PV
#> 1306                                       Càlig        PV
#> 1307                               Canet lo Roig        PV
#> 1308                           Castell de Cabres        PV
#> 1309                        Cervera del Maestrat        PV
#> 1310                                     la Jana        PV
#> 1311                       la Pobla de Benifassà        PV
#> 1312                               la Salzadella        PV
#> 1313                                   Peníscola        PV
#> 1314                                     Rossell        PV
#> 1315                                  Sant Jordi        PV
#> 1316                                  Sant Mateu        PV
#> 1317                          Sant Rafel del Riu        PV
#> 1318                   Santa Magdalena de Polpís        PV
#> 1319                                   Traiguera        PV
#> 1320                                     Vinaròs        PV
#> 1321                                        Xert        PV
#> 1322                        Guardamar del Segura        PV
#> 1323                                  Crevillent        PV
#> 1324                                         Elx        PV
#> 1325                                  Santa Pola        PV
#> 1326                      Albalat dels Tarongers        PV
#> 1327                        Alfara de la Baronia        PV
#> 1328                           Algar de Palància        PV
#> 1329                            Algímia d'Alfara        PV
#> 1330                                   Benavites        PV
#> 1331                      Benifairó de les Valls        PV
#> 1332                        Canet d'en Berenguer        PV
#> 1333                                   Estivella        PV
#> 1334                                       Faura        PV
#> 1335                                       Gilet        PV
#> 1336                                      Petrés        PV
#> 1337                          Quart de les Valls        PV
#> 1338                                    Quartell        PV
#> 1339                                      Sagunt        PV
#> 1340                                      Segart        PV
#> 1341                               Torres Torres        PV
#> 1342                                  Benaguasil        PV
#> 1343                                   Benissanó        PV
#> 1344                                      Bétera        PV
#> 1345                                     Casinos        PV
#> 1346                                    l'Eliana        PV
#> 1347                        la Pobla de Vallbona        PV
#> 1348                                      Llíria        PV
#> 1349                                     Nàquera        PV
#> 1350                                      Olocau        PV
#> 1351                          Riba-roja de Túria        PV
#> 1352                                       Serra        PV
#> 1353                                 Vilamarxant        PV
#> 1354                                       Agres        PV
#> 1355                                    Alcoleja        PV
#> 1356                                    Alcosser        PV
#> 1357                                    Alfafara        PV
#> 1358                                   Almudaina        PV
#> 1359                                     Balones        PV
#> 1360                                     Benasau        PV
#> 1361                                   Beniarrés        PV
#> 1362                                   Benilloba        PV
#> 1363                                    Benillup        PV
#> 1364                                 Benimarfull        PV
#> 1365                                  Benimassot        PV
#> 1366                                  Cocentaina        PV
#> 1367                                      Fageca        PV
#> 1368                                     Famorca        PV
#> 1369                                     Gaianes        PV
#> 1370                                       Gorga        PV
#> 1371                          l'Alqueria d'Asnar        PV
#> 1372                                      l'Orxa        PV
#> 1373                                     Millena        PV
#> 1374                                Muro d'Alcoi        PV
#> 1375                                      Planes        PV
#> 1376                               Quatretondeta        PV
#> 1377                                      Tollos        PV
#> 1378                        el Fondó de les Neus        PV
#> 1379                        el Fondó dels Frares        PV
#> 1380                                    el Pinós        PV
#> 1381                                  l'Alguenya        PV
#> 1382                                   la Romana        PV
#> 1383                                     Monòver        PV
#> 1384                                     Novelda        PV
#> 1385                                      Petrer        PV
#> 1386                                 Castellfort        PV
#> 1387                                  Cinctorres        PV
#> 1388                                  el Forcall        PV
#> 1389                                     Herbers        PV
#> 1390                          la Mata de Morella        PV
#> 1391                                la Todolella        PV
#> 1392                                     Morella        PV
#> 1393                                   Palanques        PV
#> 1394                          Portell de Morella        PV
#> 1395                                      Sorita        PV
#> 1396                                   Vallibona        PV
#> 1397                                  Vilafranca        PV
#> 1398                                    Villores        PV
#> 1399                                       Agost        PV
#> 1400                                      Aigües        PV
#> 1401                                     Alacant        PV
#> 1402                                       Busot        PV
#> 1403                                 el Campello        PV
#> 1404                     la Torre de les Maçanes        PV
#> 1405                                    Mutxamel        PV
#> 1406                         Sant Joan d'Alacant        PV
#> 1407                     Sant Vicent del Raspeig        PV
#> 1408                                      Xixona        PV
#> 1409                                      Costur        PV
#> 1410                                  Figueroles        PV
#> 1411                                    l'Alcora        PV
#> 1412                                  les Useres        PV
#> 1413                                     Llucena        PV
#> 1414                     Vistabella del Maestrat        PV
#> 1415                                       Xodos        PV
#> 1416                                       Alcoi        PV
#> 1417                         Banyeres de Mariola        PV
#> 1418                                  Benifallim        PV
#> 1419                                    Castalla        PV
#> 1420                                         Ibi        PV
#> 1421                                        Onil        PV
#> 1422                                   Penàguila        PV
#> 1423                                        Tibi        PV
#> 1424                                  Albocàsser        PV
#> 1425                           Ares del Maestrat        PV
#> 1426                       Atzeneta del Maestrat        PV
#> 1427                                   Benafigos        PV
#> 1428                                    Benassal        PV
#> 1429                                        Catí        PV
#> 1430                                       Culla        PV
#> 1431                               la Serratella        PV
#> 1432                        la Torre d'en Besora        PV
#> 1433                                       Tírig        PV
#> 1434                              Vilar de Canes        PV
#> 1435                                   Beneixama        PV
#> 1436                                        Biar        PV
#> 1437                            el Camp de Mirra        PV
#> 1438                                  la Canyada        PV
#> 1439                        Albalat dels Sorells        PV
#> 1440                                    Alboraia        PV
#> 1441                                    Albuixec        PV
#> 1442                        Alfara del Patriarca        PV
#> 1443                                   Almàssera        PV
#> 1444                        Bonrepòs i Mirambell        PV
#> 1445                                   Burjassot        PV
#> 1446                      el Puig de Santa Maria        PV
#> 1447                                   Emperador        PV
#> 1448                                       Foios        PV
#> 1449                                     Godella        PV
#> 1450                         la Pobla de Farnals        PV
#> 1451                                Massalfassar        PV
#> 1452                                Massamagrell        PV
#> 1453                                     Meliana        PV
#> 1454                                    Montcada        PV
#> 1455                                     Museros        PV
#> 1456                                     Paterna        PV
#> 1457                                       Puçol        PV
#> 1458                                 Rafelbunyol        PV
#> 1459                                    Rocafort        PV
#> 1460                           Tavernes Blanques        PV
#> 1461                                    Vinalesa        PV
#> 1462                                     Alaquàs        PV
#> 1463                                       Albal        PV
#> 1464                                    Alcàsser        PV
#> 1465                                      Aldaia        PV
#> 1466                                     Alfafar        PV
#> 1467                                  Benetússer        PV
#> 1468                                 Beniparrell        PV
#> 1469                                   Catarroja        PV
#> 1470                        Llocnou de la Corona        PV
#> 1471                                     Manises        PV
#> 1472                                  Massanassa        PV
#> 1473                                     Mislata        PV
#> 1474                                    Paiporta        PV
#> 1475                                     Picanya        PV
#> 1476                                   Picassent        PV
#> 1477                             Quart de Poblet        PV
#> 1478                                      Sedaví        PV
#> 1479                                       Silla        PV
#> 1480                                     Torrent        PV
#> 1481                                   Xirivella        PV
#> 1482                                     Barxeta        PV
#> 1483                                      Canals        PV
#> 1484                                       Cerdà        PV
#> 1485                                  el Genovés        PV
#> 1486                                    Estubeny        PV
#> 1487                       l'Alcúdia de Crespins        PV
#> 1488                       la Font de la Figuera        PV
#> 1489                     la Granja de la Costera        PV
#> 1490                           la Llosa de Ranes        PV
#> 1491                            Llanera de Ranes        PV
#> 1492                       Llocnou d'en Fenollet        PV
#> 1493                                     Moixent        PV
#> 1494                                     Montesa        PV
#> 1495                                     Novetlè        PV
#> 1496                            Rotglà i Corberà        PV
#> 1497                                    Torrella        PV
#> 1498                                     Vallada        PV
#> 1499                                      Vallés        PV
#> 1500                                      Xàtiva        PV
#> 1501                                    Alcalalí        PV
#> 1502                                  Beniarbeig        PV
#> 1503                                  Benidoleig        PV
#> 1504                                  Benigembla        PV
#> 1505                                    Benimeli        PV
#> 1506                                     Benissa        PV
#> 1507                                        Calp        PV
#> 1508                         Castell de Castells        PV
#> 1509                                       Dénia        PV
#> 1510                 el Poble Nou de Benitatxell        PV
#> 1511                          el Ràfol d'Almúnia        PV
#> 1512                                   el Verger        PV
#> 1513                                 els Poblets        PV
#> 1514                              Gata de Gorgos        PV
#> 1515                                   l'Atzúbia        PV
#> 1516                            la Vall d'Alcalà        PV
#> 1517                               la Vall d'Ebo        PV
#> 1518                        la Vall de Gallinera        PV
#> 1519                           la Vall de Laguar        PV
#> 1520                                      Llíber        PV
#> 1521                                       Murla        PV
#> 1522                                      Ondara        PV
#> 1523                                        Orba        PV
#> 1524                                     Parcent        PV
#> 1525                                   Pedreguer        PV
#> 1526                                        Pego        PV
#> 1527                                       Sagra        PV
#> 1528                         Sanet i els Negrals        PV
#> 1529                                      Senija        PV
#> 1530                                     Teulada        PV
#> 1531                                      Tormos        PV
#> 1532                                       Xàbia        PV
#> 1533                                        Xaló        PV
#> 1534                                       Altea        PV
#> 1535                                    Beniardà        PV
#> 1536                                    Benidorm        PV
#> 1537                                    Benifato        PV
#> 1538                                 Benimantell        PV
#> 1539                                     Bolulla        PV
#> 1540                         Callosa d'en Sarrià        PV
#> 1541                                   Confrides        PV
#> 1542                     el Castell de Guadalest        PV
#> 1543                                   Finestrat        PV
#> 1544                              l'Alfàs del Pi        PV
#> 1545                                    la Nucia        PV
#> 1546                              la Vila Joiosa        PV
#> 1547                                      Orxeta        PV
#> 1548                                       Polop        PV
#> 1549                                      Relleu        PV
#> 1550                                       Sella        PV
#> 1551                                     Tàrbena        PV
#> 1552                                   Almassora        PV
#> 1553                                  Benicàssim        PV
#> 1554                                     Benlloc        PV
#> 1555                                     Borriol        PV
#> 1556                                     Cabanes        PV
#> 1557                        Castelló de la Plana        PV
#> 1558                            la Pobla Tornesa        PV
#> 1559                      la Serra d'en Galceran        PV
#> 1560                       la Torre d'en Doménec        PV
#> 1561                              la Vall d'Alba        PV
#> 1562                        les Coves de Vinromà        PV
#> 1563                                      Orpesa        PV
#> 1564                           Sant Joan de Moró        PV
#> 1565                                 Torreblanca        PV
#> 1566                                   Vilafamés        PV
#> 1567                          Vilanova d'Alcolea        PV
#> 1568                                         Aín        PV
#> 1569                                    Almenara        PV
#> 1570                                      Artana        PV
#> 1571                                       Betxí        PV
#> 1572                                    Borriana        PV
#> 1573                                      Eslida        PV
#> 1574                                 Fondeguilla        PV
#> 1575                            l'Alcúdia de Veo        PV
#> 1576                                    la Llosa        PV
#> 1577                              la Vall d'Uixó        PV
#> 1578                                la Vilavella        PV
#> 1579                               les Alqueries        PV
#> 1580                                     Moncofa        PV
#> 1581                                       Nules        PV
#> 1582                                        Onda        PV
#> 1583                                  Ribesalbes        PV
#> 1584                                       Suera        PV
#> 1585                                       Tales        PV
#> 1586                                   Vila-real        PV
#> 1587                                      Xilxes        PV
#> 1588                                     Alberic        PV
#> 1589                         Alcàntera de Xúquer        PV
#> 1590                                      Alfarb        PV
#> 1591                                    Algemesí        PV
#> 1592                                     Alginet        PV
#> 1593                                      Alzira        PV
#> 1594                                     Antella        PV
#> 1595                                   Beneixida        PV
#> 1596                                    Benifaió        PV
#> 1597                                    Benimodo        PV
#> 1598                                  Benimuslem        PV
#> 1599                                  Carcaixent        PV
#> 1600                                      Càrcer        PV
#> 1601                                      Carlet        PV
#> 1602                                    Castelló        PV
#> 1603                                     Catadau        PV
#> 1604                                       Cotes        PV
#> 1605                                     Gavarda        PV
#> 1606                                  Guadassuar        PV
#> 1607                                   l'Alcúdia        PV
#> 1608                                     l'Énova        PV
#> 1609                             la Pobla Llarga        PV
#> 1610                                     Llombai        PV
#> 1611                                      Manuel        PV
#> 1612                                  Massalavés        PV
#> 1613                                     Montroi        PV
#> 1614                                  Montserrat        PV
#> 1615                                 Rafelguaraf        PV
#> 1616                                        Real        PV
#> 1617                                 Sant Joanet        PV
#> 1618                                     Sellent        PV
#> 1619                                     Senyera        PV
#> 1620                                  Sumacàrcer        PV
#> 1621                                       Torís        PV
#> 1622                        Albalat de la Ribera        PV
#> 1623                                  Almussafes        PV
#> 1624                          Benicull de Xúquer        PV
#> 1625                                     Corbera        PV
#> 1626                                     Cullera        PV
#> 1627                                      Favara        PV
#> 1628                                   Fortaleny        PV
#> 1629                                      Llaurí        PV
#> 1630                           Polinyà de Xúquer        PV
#> 1631                                       Riola        PV
#> 1632                                     Sollana        PV
#> 1633                                       Sueca        PV
#> 1634                                        Ador        PV
#> 1635                                     Alfauir        PV
#> 1636                                    Almiserà        PV
#> 1637                                    Almoines        PV
#> 1638                                        Barx        PV
#> 1639                                 Bellreguard        PV
#> 1640                                    Beniarjó        PV
#> 1641                   Benifairó de la Valldigna        PV
#> 1642                                     Beniflà        PV
#> 1643                                  Benirredrà        PV
#> 1644                 Castellonet de la Conquesta        PV
#> 1645                                      Daimús        PV
#> 1646                           el Real de Gandia        PV
#> 1647                                      Gandia        PV
#> 1648                       Guardamar de la Safor        PV
#> 1649                   l'Alqueria de la Comtessa        PV
#> 1650                         la Font d'en Carròs        PV
#> 1651                      Llocnou de Sant Jeroni        PV
#> 1652                                     Miramar        PV
#> 1653                                       Oliva        PV
#> 1654                             Palma de Gandia        PV
#> 1655                                     Palmera        PV
#> 1656                                       Piles        PV
#> 1657                                     Potries        PV
#> 1658                                  Rafelcofer        PV
#> 1659                                      Ròtova        PV
#> 1660                       Simat de la Valldigna        PV
#> 1661                    Tavernes de la Valldigna        PV
#> 1662                                  Vilallonga        PV
#> 1663                                      Xeraco        PV
#> 1664                                      Xeresa        PV
#> 1665                                    Agullent        PV
#> 1666                           Aielo de Malferit        PV
#> 1667                              Aielo de Rugat        PV
#> 1668                                     Albaida        PV
#> 1669                                   Alfarrasí        PV
#> 1670                          Atzeneta d'Albaida        PV
#> 1671                                     Bèlgida        PV
#> 1672                                      Bellús        PV
#> 1673                                   Beniatjar        PV
#> 1674                                   Benicolet        PV
#> 1675                                   Benigànim        PV
#> 1676                                   Benissoda        PV
#> 1677                                  Benissuera        PV
#> 1678                                   Bocairent        PV
#> 1679                                      Bufali        PV
#> 1680                                   Carrícola        PV
#> 1681                           Castelló de Rugat        PV
#> 1682                                  el Palomar        PV
#> 1683                           el Ràfol de Salem        PV
#> 1684                     Fontanars dels Alforins        PV
#> 1685                               Guadasséquies        PV
#> 1686                                   l'Olleria        PV
#> 1687                            la Pobla del Duc        PV
#> 1688                                    Llutxent        PV
#> 1689                                 Montaverner        PV
#> 1690                                 Montitxelvo        PV
#> 1691                                   Ontinyent        PV
#> 1692                                        Otos        PV
#> 1693                                       Pinet        PV
#> 1694                                 Quatretonda        PV
#> 1695                                       Rugat        PV
#> 1696                                       Salem        PV
#> 1697                                     Sempere        PV
#> 1698                                   Terrateig        PV
#> 1699                                    l'Alguer  Sardenya
#>                                                   name
#> 1                                            Naut Aran
#> 2                                                Arres
#> 3                                               Bausen
#> 4                                              Bossòst
#> 5                                              Canejan
#> 6                                            Es Bòrdes
#> 7                                                  Les
#> 8                                     Vielha e Mijaran
#> 9                                              Vilamòs
#> 10                 Angoustrine-Villeneuve-des-Escaldes
#> 11                                            Bolquère
#> 12                                              Dorres
#> 13                                                Égat
#> 14                                                Eyne
#> 15                                             Enveitg
#> 16                                                 Err
#> 17                                             Estavar
#> 18                              Font-Romeu-Odeillo-Via
#> 19                                        Bourg-Madame
#> 20                                     Latour-de-Carol
#> 21                                                 Llo
#> 22                                              Nahuja
#> 23                                              Osséja
#> 24                                   Palau-de-Cerdagne
#> 25                                               Porta
#> 26                                     Porté-Puymorens
#> 27                                         Saillagouse
#> 28                                     Sainte-Léocadie
#> 29                                          Targasonne
#> 30                                                  Ur
#> 31                                        Valcebollère
#> 32                                          Les Angles
#> 33                                        Fontrabiouse
#> 34                                         Formiguères
#> 35                                            Matemale
#> 36                                          Puyvalador
#> 37                                                Réal
#> 38                                    Ayguatébia-Talau
#> 39                                          Arboussols
#> 40                                             Campôme
#> 41                                         Canaveilles
#> 42                                             Casteil
#> 43                                             Catllar
#> 44                                 Caudiès-de-Conflent
#> 45                                     Clara-Villerach
#> 46                                             Codalet
#> 47                                               Conat
#> 48                               Corneilla-de-Conflent
#> 49                                           Los Masos
#> 50                                              Escaro
#> 51                                  Espira-de-Conflent
#> 52                                             Estoher
#> 53                                                 Eus
#> 54                                             Fillols
#> 55                                           Finestret
#> 56                                        Fontpédrouse
#> 57                                              Fuilla
#> 58                                           Glorianes
#> 59                                                Joch
#> 60                                              Jujols
#> 61                                        La Cabanasse
#> 62                                         La Llagonne
#> 63                                         Marquixanes
#> 64                                              Mantet
#> 65                                    Molitg-les-Bains
#> 66                                          Mont-Louis
#> 67                                              Mosset
#> 68                                             Nohèdes
#> 69                                                Nyer
#> 70                                              Olette
#> 71                                             Urbanya
#> 72                                             Oreilla
#> 73                                                  Py
#> 74                                              Planès
#> 75                                              Prades
#> 76                                             Railleu
#> 77                                          Ria-Sirach
#> 78                                             Rigarda
#> 79                                               Rodès
#> 80                                               Sansa
#> 81                           Saint-Pierre-dels-Forcats
#> 82                                             Sahorre
#> 83                                               Sauto
#> 84                                            Serdinya
#> 85                                            Souanyas
#> 86                                            Tarerach
#> 87                                            Taurinya
#> 88                                   Thuès-Entre-Valls
#> 89                                         Baillestavy
#> 90                                            Valmanya
#> 91                                    Vernet-les-Bains
#> 92                            Villefranche-de-Conflent
#> 93                                               Vinça
#> 94                                            Ansignan
#> 95                                             Bélesta
#> 96                                           Campoussy
#> 97                                            Caramany
#> 98                                           Cassagnes
#> 99                             Caudiès-de-Fenouillèdes
#> 100                                        Saint-Arnac
#> 101                                          Le Vivier
#> 102                                           Feilluns
#> 103                                         Fenouillet
#> 104                                              Fosse
#> 105                                          Lesquerde
#> 106                                   Latour-de-France
#> 107                                             Lansac
#> 108                                              Maury
#> 109                                Montalba-le-Château
#> 110                                Pézilla-de-Conflent
#> 111                                           Planèzes
#> 112                                   Prats-de-Sournia
#> 113                                          Prugnanes
#> 114                                         Rasiguères
#> 115                                         Rabouillet
#> 116                         Saint-Martin-de-Fenouillet
#> 117                           Saint-Paul-de-Fenouillet
#> 118                                            Sournia
#> 119                                         Trévillach
#> 120                                             Trilla
#> 121                                               Vira
#> 122                                             Alénya
#> 123                                    Argelès-sur-Mer
#> 124                                              Bages
#> 125                                             Baixas
#> 126                                    Banyuls-sur-Mer
#> 127                                Banyuls-dels-Aspres
#> 128                                               Baho
#> 129                                             Bompas
#> 130                                           Brouilla
#> 131                                      Boule-d'Amont
#> 132                                       Bouleternère
#> 133                                          Cabestany
#> 134                                              Calce
#> 135                                         Calmeilles
#> 136                                            Camélas
#> 137                                Canet-en-Roussillon
#> 138                                            Canohès
#> 139                                          Casefabre
#> 140                                      Cases-de-Pène
#> 141                                          Castelnou
#> 142                                            Cerbère
#> 143                                             Claira
#> 144                                            Corbère
#> 145                                Corbère-les-Cabanes
#> 146                               Corneilla-la-Rivière
#> 147                               Corneilla-del-Vercol
#> 148                                          Collioure
#> 149                                        Le Barcarès
#> 150                                           Le Soler
#> 151                                          Le Boulou
#> 152                                               Elne
#> 153                                   Espira-de-l'Agly
#> 154                                            Estagel
#> 155                                           Fourques
#> 156                                       Ille-sur-Têt
#> 157                                           L'Albère
#> 158                                         La Bastide
#> 159                                Laroque-des-Albères
#> 160                                    Latour-Bas-Elne
#> 161                                         Les Cluses
#> 162                                             Llauro
#> 163                                             Llupia
#> 164                                             Millas
#> 165                                          Montescot
#> 166                            Montesquieu-des-Albères
#> 167                                            Montner
#> 168                                         Montauriol
#> 169                                            Néfiach
#> 170                                                Oms
#> 171                                     Opoul-Périllos
#> 172                                            Ortaffa
#> 173                                              Passa
#> 174                                    Palau-del-Vidre
#> 175                                       Peyrestortes
#> 176                                          Perpignan
#> 177                                 Pézilla-la-Rivière
#> 178                                                Pia
#> 179                                         Pollestres
#> 180                                          Ponteilla
#> 181                                       Port-Vendres
#> 182                                  Prunet-et-Belpuig
#> 183                                             Caixas
#> 184                                         Rivesaltes
#> 185                                          Saleilles
#> 186                                  Salses-le-Château
#> 187                                        Saint-André
#> 188                                      Saint-Cyprien
#> 189                                       Saint-Estève
#> 190                                Saint-Féliu-d'Amont
#> 191                                Saint-Féliu-d'Avall
#> 192                          Saint-Génis-des-Fontaines
#> 193                                    Saint-Hippolyte
#> 194                               Saint-Jean-Lasseille
#> 195                       Saint-Laurent-de-la-Salanque
#> 196                             Saint-Michel-de-Llotes
#> 197                                      Saint-Nazaire
#> 198                   Sainte-Colombe-de-la-Commanderie
#> 199                                Sainte-Marie-la-Mer
#> 200                                             Sorède
#> 201                                           Tautavel
#> 202                                            Terrats
#> 203                                              Théza
#> 204                                          Toulouges
#> 205                                           Tordères
#> 206                                         Torreilles
#> 207                                          Tresserre
#> 208                                          Trouillas
#> 209                                              Thuir
#> 210                         Villelongue-de-la-Salanque
#> 211                             Villelongue-dels-Monts
#> 212                                       Villemolaque
#> 213                              Villeneuve-la-Rivière
#> 214                              Villeneuve-de-la-Raho
#> 215                                            Vingrau
#> 216                                     Arles-sur-Tech
#> 217                                              Céret
#> 218                                            Corsavy
#> 219                                         Coustouges
#> 220                                         Le Perthus
#> 221                                            Le Tech
#> 222                           Amélie-les-Bains-Palalda
#> 223                                           Lamanère
#> 224                                           Montbolo
#> 225                                         Montferrer
#> 226                               Maureillas-las-Illas
#> 227                           Prats-de-Mollo-la-Preste
#> 228                                             Reynès
#> 229                            Saint-Jean-Pla-de-Corts
#> 230                           Saint-Laurent-de-Cerdans
#> 231                                       Saint-Marsal
#> 232                                        Serralongue
#> 233                                            Taillet
#> 234                                             Taulis
#> 235                                              Vivès
#> 236                  Aguaviva / Aiguaviva de Bergantes
#> 237          Belmonte de San José / Bellmunt de Mesquí
#> 238          La Cañada de Verich / la Canyada de Beric
#> 239                         La Codoñera / la Codonyera
#> 240                        La Ginebrosa / la Ginebrosa
#> 241                        La Cerollera / la Sorollera
#> 242                    Torrevelilla / Torre de Vilella
#> 243                                       Fayón / Faió
#> 244                                    Fabara / Favara
#> 245                                             Maella
#> 246                                   Nonaspe / Nonasp
#> 247                                              Fraga
#> 248                            Mequinenza / Mequinensa
#> 249                                     Zaidín / Saidí
#> 250               Torrente de Cinca / Torrent de Cinca
#> 251                                   Velilla de Cinca
#> 252                                            Albelda
#> 253                                             Baells
#> 254                                        Camporrells
#> 255                        Castillonroy / Castellonroi
#> 256                             Alcampell / el Campell
#> 257                            Altorricón / el Torricó
#> 258                                Peralta de Calasanz
#> 259     San Esteban de Litera / Sant Esteve de Llitera
#> 260                                       Azanuy-Alins
#> 261            Tamarite de Litera / Tamarit de Llitera
#> 262                              Baldellou / Valdellou
#> 263                               Vencillón / Vensilló
#> 264                   Arens de Lledó / Arenys de Lledó
#> 265                                   Beceite / Beseit
#> 266                               Calaceite / Calaceit
#> 267                        Fuentespalda / Fontdespatla
#> 268                                 Fórnoles / Fórnols
#> 269                         La Fresneda / la Freixneda
#> 270                                      La Portellada
#> 271              Torre del Compte / la Torre del Comte
#> 272                    Valdeltormo / la Vall del Tormo
#> 273                             Lledó / Lledó d'Algars
#> 274                                Mazaleón / Massalió
#> 275                                 Monroyo / Montroig
#> 276    Peñarroya de Tastavins / Pena-roja de Tastavins
#> 277                                  Cretas / Queretes
#> 278                                   Ráfales / Ràfels
#> 279                      Torre de Arcas / Torredarques
#> 280                      Valderrobres / Vall de Roures
#> 281                         Valjunquera / Valljunquera
#> 282                            Arén / Areny de Noguera
#> 283                              Benabarre / Benavarri
#> 284                                            Beranuy
#> 285                                            Bonansa
#> 286                                         Castigaleu
#> 287                 Estopiñán del Castillo / Estopanyà
#> 288                                            Isábena
#> 289                              Lascuarre / Lasquarri
#> 290                              Laspaúles / Les Paüls
#> 291             Monesma y Cajigar / Monesma i Caixigar
#> 292                                Montanuy / Montanui
#> 293           Puente de Montañana / Pont de Montanyana
#> 294                                            Sopeira
#> 295                                      Tolva / Tolba
#> 296                                    Torre la Ribera
#> 297                 Viacamp y Litera/Viacamp i Lliterà
#> 298                                            Eivissa
#> 299                            Sant Antoni de Portmany
#> 300                              Sant Joan de Labritja
#> 301                            Sant Josep de sa Talaia
#> 302                              Santa Eulària des Riu
#> 303                                         Formentera
#> 304                                               Artà
#> 305                                          Capdepera
#> 306                                            Manacor
#> 307                         Sant Llorenç des Cardassar
#> 308                                        Son Servera
#> 309                                             Alaior
#> 310                                         Ciutadella
#> 311                                         es Castell
#> 312                                        es Mercadal
#> 313                                    es Migjorn Gran
#> 314                                          Ferreries
#> 315                                                Maó
#> 316                                         Sant Lluís
#> 317                                             Campos
#> 318                                           Felanitx
#> 319                                          Llucmajor
#> 320                                           Santanyí
#> 321                                        ses Salines
#> 322                                              Palma
#> 323                                            Algaida
#> 324                                             Ariany
#> 325                                            Costitx
#> 326                               Lloret de Vistalegre
#> 327                                              Llubí
#> 328                                  Maria de la Salut
#> 329                                           Montuïri
#> 330                                               Muro
#> 331                                              Petra
#> 332                                           Porreres
#> 333                                          Sant Joan
#> 334                                      Santa Eugènia
#> 335                                    Santa Margalida
#> 336                                          Sencelles
#> 337                                              Sineu
#> 338                               Vilafranca de Bonany
#> 339                                              Alaró
#> 340                                            Alcúdia
#> 341                                         Binissalem
#> 342                                              Búger
#> 343                                           Campanet
#> 344                                            Consell
#> 345                                               Inca
#> 346                                            Lloseta
#> 347                                  Mancor de la Vall
#> 348                                           Marratxí
#> 349                                           sa Pobla
#> 350                               Santa Maria del Camí
#> 351                                              Selva
#> 352                                            Andratx
#> 353                                        Banyalbufar
#> 354                                            Bunyola
#> 355                                             Calvià
#> 356                                               Deià
#> 357                                            Escorca
#> 358                                           Esporles
#> 359                                         Estellencs
#> 360                                          Fornalutx
#> 361                                           Pollença
#> 362                                        Puigpunyent
#> 363                                             Sóller
#> 364                                        Valldemossa
#> 365                                        Aiguamúrcia
#> 366                                            Alcover
#> 367                                               Alió
#> 368                                             Bràfim
#> 369                                     Cabra del Camp
#> 370                                            el Milà
#> 371                              el Pla de Santa Maria
#> 372                                el Pont d'Armentera
#> 373                                         el Rourell
#> 374                                      els Garidells
#> 375                                 Figuerola del Camp
#> 376                                            la Masó
#> 377                                            la Riba
#> 378                                           Mont-ral
#> 379                                          Montferri
#> 380                                             Nulles
#> 381                                          Puigpelat
#> 382                                             Querol
#> 383                                            Rodonyà
#> 384                                           Vallmoll
#> 385                                              Valls
#> 386                                        Vila-rodona
#> 387                                          Vilabella
#> 388                                           Agullana
#> 389                                            Albanyà
#> 390                            Avinyonet de Puigventós
#> 391                                            Bàscara
#> 392                                              Biure
#> 393                            Boadella i les Escaules
#> 394                                           Borrassà
#> 395                                         Cabanelles
#> 396                                            Cabanes
#> 397                                           Cadaqués
#> 398                                            Capmany
#> 399                                         Cantallops
#> 400                                Castelló d'Empúries
#> 401                                           Cistella
#> 402                                             Colera
#> 403                                            Darnius
#> 404                                   el Far d'Empordà
#> 405                                el Port de la Selva
#> 406                                            Espolla
#> 407                                           Figueres
#> 408                                             Fortià
#> 409                                           Garrigàs
#> 410                                        Garriguella
#> 411                                        l'Armentera
#> 412                                           l'Escala
#> 413                                        la Jonquera
#> 414                                    la Selva de Mar
#> 415                                           la Vajol
#> 416                                             Llançà
#> 417                                              Lladó
#> 418                                              Llers
#> 419                                Maçanet de Cabrenys
#> 420                               Masarac i Vilarnadal
#> 421                                 Mollet de Peralada
#> 422                                             Navata
#> 423                                              Ordis
#> 424                             Palau de Santa Eulàlia
#> 425                                    Palau-saverdera
#> 426                                                Pau
#> 427                                     Pedret i Marzà
#> 428                                           Peralada
#> 429                                     Pont de Molins
#> 430                                             Pontós
#> 431                                            Portbou
#> 432                                              Rabós
#> 433                                            Riumors
#> 434                                              Roses
#> 435                              Sant Climent Sescebes
#> 436                            Sant Llorenç de la Muga
#> 437                              Sant Miquel de Fluvià
#> 438                                          Sant Mori
#> 439                                 Sant Pere Pescador
#> 440                            Santa Llogaia d'Àlguema
#> 441                        Saus, Camallera i Llampaies
#> 442                                            Siurana
#> 443                                           Terrades
#> 444                                Torroella de Fluvià
#> 445                                           Ventalló
#> 446                                         Vila-sacra
#> 447                                        Vilabertran
#> 448                                          Viladamat
#> 449                                           Vilafant
#> 450                                          Vilajuïga
#> 451                                        Vilamacolum
#> 452                                          Vilamalla
#> 453                                       Vilamaniscle
#> 454                                           Vilanant
#> 455                                             Vilaür
#> 456                              Avinyonet del Penedès
#> 457                              Castellet i la Gornal
#> 458                              Castellví de la Marca
#> 459                                 el Pla del Penedès
#> 460                                          Font-rubí
#> 461                                             Gelida
#> 462                                         la Granada
#> 463                                       les Cabanyes
#> 464                                            Mediona
#> 465                                           Olèrdola
#> 466                                Olesa de Bonesvalls
#> 467                                   Pacs del Penedès
#> 468                                            Pontons
#> 469                                         Puigdàlber
#> 470                            Sant Cugat Sesgarrigues
#> 471                             Sant Llorenç d'Hortons
#> 472                                 Sant Martí Sarroca
#> 473                          Sant Pere de Riudebitlles
#> 474                             Sant Quintí de Mediona
#> 475                               Sant Sadurní d'Anoia
#> 476                               Santa Fe del Penedès
#> 477                       Santa Margarida i els Monjos
#> 478                                           Subirats
#> 479                                         Torrelavit
#> 480                                  Torrelles de Foix
#> 481                             Vilafranca del Penedès
#> 482                                 Vilobí del Penedès
#> 483                                        Alàs i Cerc
#> 484                                           Arsèguel
#> 485                                           Bassella
#> 486                                               Cabó
#> 487                                               Cava
#> 488                                      Coll de Nargó
#> 489                                     el Pont de Bar
#> 490                                          Estamariu
#> 491                                    Fígols i Alinyà
#> 492                                      Josa i Tuixén
#> 493                                    la Seu d'Urgell
#> 494                                 la Vansa i Fórnols
#> 495                                les Valls d'Aguilar
#> 496                                les Valls de Valira
#> 497                             Montferrer i Castellbò
#> 498                                             Oliana
#> 499                                            Organyà
#> 500                                           Peramola
#> 501                                  Ribera d'Urgellet
#> 502                                   el Pont de Suert
#> 503                                     la Vall de Boí
#> 504                                           Vilaller
#> 505                                          Argençola
#> 506                                           Bellprat
#> 507                                    Cabrera d'Anoia
#> 508                                              Calaf
#> 509                                 Calonge de Segarra
#> 510                                         Capellades
#> 511                                              Carme
#> 512                         Castellfollit de Riubregós
#> 513                                         Castellolí
#> 514                                             Copons
#> 515                                            el Bruc
#> 516                           els Hostalets de Pierola
#> 517                                   els Prats de Rei
#> 518                                           Igualada
#> 519                                              Jorba
#> 520                                         la Llacuna
#> 521                              la Pobla de Claramunt
#> 522                              la Torre de Claramunt
#> 523                                           Masquefa
#> 524                                          Montmaneu
#> 525                                              Òdena
#> 526                                               Orpí
#> 527                                              Piera
#> 528                                             Pujalt
#> 529                                              Rubió
#> 530                                 Sant Martí de Tous
#> 531                             Sant Martí Sesgueioles
#> 532                              Sant Pere Sallavinera
#> 533                         Santa Margarida de Montbui
#> 534                            Santa Maria de Miralles
#> 535                                   Vallbona d'Anoia
#> 536                                            Veciana
#> 537                                  Vilanova del Camí
#> 538                                 Aguilar de Segarra
#> 539                                              Artés
#> 540                                             Avinyó
#> 541                                          Balsareny
#> 542                                             Callús
#> 543                                            Cardona
#> 544                             Castellbell i el Vilar
#> 545                             Castellfollit del Boix
#> 546                                        Castellgalí
#> 547                                Castellnou de Bages
#> 548                     el Pont de Vilomara i Rocafort
#> 549                                          Fonollosa
#> 550                                               Gaià
#> 551                                            Manresa
#> 552                                          Marganell
#> 553                            Monistrol de Montserrat
#> 554                                               Mura
#> 555                                          Navarcles
#> 556                                              Navàs
#> 557                                           Rajadell
#> 558                                            Sallent
#> 559                                Sant Feliu Sasserra
#> 560                              Sant Fruitós de Bages
#> 561                           Sant Joan de Vilatorrada
#> 562                                Sant Mateu de Bages
#> 563                         Sant Salvador de Guardiola
#> 564                           Sant Vicenç de Castellet
#> 565                                          Santpedor
#> 566                                              Súria
#> 567                                          Talamanca
#> 568                                            Alforja
#> 569                                           Almoster
#> 570                                             Arbolí
#> 571                                           Botarell
#> 572                                           Cambrils
#> 573                                          Capafonts
#> 574                               Castellvell del Camp
#> 575                                          Colldejou
#> 576                                         Duesaigües
#> 577                                           l'Albiol
#> 578                                          l'Aleixar
#> 579                                        l'Argentera
#> 580                                           la Febró
#> 581                                  la Selva del Camp
#> 582                                les Borges del Camp
#> 583                                          Maspujols
#> 584                                 Mont-roig del Camp
#> 585                                  Montbrió del Camp
#> 586                                             Prades
#> 587                                            Pratdip
#> 588                                               Reus
#> 589                                        Riudecanyes
#> 590                                          Riudecols
#> 591                                            Riudoms
#> 592               Vandellòs i l'Hospitalet de l'Infant
#> 593                             Vilanova d'Escornalbou
#> 594                                          Vilaplana
#> 595                                 Vinyols i els Arcs
#> 596                                            Aldover
#> 597                                   Alfara de Carles
#> 598                                         Benifallet
#> 599                                           Camarles
#> 600                                           Deltebre
#> 601                                         el Perelló
#> 602                                            l'Aldea
#> 603                                   l'Ametlla de Mar
#> 604                                          l'Ampolla
#> 605                                              Paüls
#> 606                                           Roquetes
#> 607                                            Tivenys
#> 608                                            Tortosa
#> 609                                              Xerta
#> 610                                             Albons
#> 611                                              Begur
#> 612                                Bellcaire d'Empordà
#> 613                              Calonge i Sant Antoni
#> 614              Castell d'Aro, Platja d'Aro i s'Agaró
#> 615                                           Colomers
#> 616                                              Corçà
#> 617        Cruïlles, Monells i Sant Sadurní de l'Heura
#> 618                                              Foixà
#> 619                                        Fontanilles
#> 620                                         Garrigoles
#> 621                                             Gualta
#> 622                                              Jafre
#> 623                                la Bisbal d'Empordà
#> 624                                            la Pera
#> 625                               la Tallada d'Empordà
#> 626                                           Mont-ras
#> 627                                        Palafrugell
#> 628                                            Palamós
#> 629                                        Palau-sator
#> 630                                               Pals
#> 631                                            Parlavà
#> 632                                           Regencós
#> 633                                              Rupià
#> 634                              Sant Feliu de Guíxols
#> 635                               Santa Cristina d'Aro
#> 636                                      Serra de Daró
#> 637                                            Torrent
#> 638                               Torroella de Montgrí
#> 639                                               Ullà
#> 640                                          Ullastret
#> 641                                          Ultramort
#> 642                                      Vall-llobrega
#> 643                                             Verges
#> 644                                           Vilopriu
#> 645                                           Forallac
#> 646                                             Abrera
#> 647                                             Begues
#> 648                                      Castelldefels
#> 649                               Castellví de Rosanes
#> 650                                           Cervelló
#> 651                                           Collbató
#> 652                               Corbera de Llobregat
#> 653                              Cornellà de Llobregat
#> 654                                          el Papiol
#> 655                               el Prat de Llobregat
#> 656                                       Esparreguera
#> 657                             Esplugues de Llobregat
#> 658                                               Gavà
#> 659                               la Palma de Cervelló
#> 660                                          Martorell
#> 661                                      Molins de Rei
#> 662                                Olesa de Montserrat
#> 663                                            Pallejà
#> 664                            Sant Andreu de la Barca
#> 665                              Sant Boi de Llobregat
#> 666                          Sant Climent de Llobregat
#> 667                             Sant Esteve Sesrovires
#> 668                            Sant Feliu de Llobregat
#> 669                                    Sant Joan Despí
#> 670                                  Sant Just Desvern
#> 671                             Sant Vicenç dels Horts
#> 672                           Santa Coloma de Cervelló
#> 673                             Torrelles de Llobregat
#> 674                                          Vallirana
#> 675                                         Viladecans
#> 676                                          Albinyana
#> 677                               Banyeres del Penedès
#> 678                                            Bellvei
#> 679                                           Bonastre
#> 680                                           Calafell
#> 681                                              Cunit
#> 682                                        el Montmell
#> 683                                        el Vendrell
#> 684                                            l'Arboç
#> 685                              la Bisbal del Penedès
#> 686                                Llorenç del Penedès
#> 687                                         Masllorenç
#> 688                            Sant Jaume dels Domenys
#> 689                                        Santa Oliva
#> 690                                           Badalona
#> 691                                          Barcelona
#> 692                          l'Hospitalet de Llobregat
#> 693                                Sant Adrià de Besòs
#> 694                           Santa Coloma de Gramenet
#> 695                                               Avià
#> 696                                               Bagà
#> 697                                              Berga
#> 698                                            Borredà
#> 699                                            Capolat
#> 700                                          Casserres
#> 701                                 Castell de l'Areny
#> 702                                 Castellar de n'Hug
#> 703                                  Castellar del Riu
#> 704                                              Cercs
#> 705                                             Fígols
#> 706                                          Gironella
#> 707                                         Gisclareny
#> 708                                              Gósol
#> 709                              Guardiola de Berguedà
#> 710                                        l'Espunyola
#> 711                                 la Nou de Berguedà
#> 712                                 la Pobla de Lillet
#> 713                                            la Quar
#> 714                                           Montclar
#> 715                                          Montmajor
#> 716                                              Olvan
#> 717                                          Puig-reig
#> 718                                              Sagàs
#> 719                                             Saldes
#> 720                            Sant Jaume de Frontanyà
#> 721                           Sant Julià de Cerdanyola
#> 722                              Santa Maria de Merlès
#> 723                                          Vallcebre
#> 724                                             Vilada
#> 725                                  Viver i Serrateix
#> 726                                                Alp
#> 727                                Bellver de Cerdanya
#> 728                                             Bolvir
#> 729                                                Das
#> 730                              Fontanals de Cerdanya
#> 731                                                Ger
#> 732                                  Guils de Cerdanya
#> 733                                             Isòvol
#> 734                                   Lles de Cerdanya
#> 735                                             Llívia
#> 736                                           Meranges
#> 737                                Montellà i Martinet
#> 738                                     Prats i Sansor
#> 739                                           Prullans
#> 740                                          Puigcerdà
#> 741                                    Riu de Cerdanya
#> 742                                               Urús
#> 743                                Barberà de la Conca
#> 744                                         Blancafort
#> 745                                             Conesa
#> 746                                              Forès
#> 747                              l'Espluga de Francolí
#> 748                                          les Piles
#> 749                                             Llorac
#> 750                                          Montblanc
#> 751                               Passanant i Belltall
#> 752                                               Pira
#> 753                                            Pontils
#> 754                                Rocafort de Queralt
#> 755                            Santa Coloma de Queralt
#> 756                                             Sarral
#> 757                                 Savallà del Comtat
#> 758                                              Senan
#> 759                                          Solivella
#> 760                                          Vallclara
#> 761                              Vallfogona de Riucorb
#> 762                                 Vilanova de Prades
#> 763                                           Vilaverd
#> 764                                   Vimbodí i Poblet
#> 765                                          Canyelles
#> 766                                           Cubelles
#> 767                                           Olivella
#> 768                                 Sant Pere de Ribes
#> 769                                             Sitges
#> 770                               Vilanova i la Geltrú
#> 771                                             Arbeca
#> 772                                        Bellaguarda
#> 773                                             Bovera
#> 774                                        Castelldans
#> 775                            Cervià de les Garrigues
#> 776                                           el Cogul
#> 777                                         el Soleràs
#> 778                                        el Vilosell
#> 779                                       els Omellons
#> 780                                          els Torms
#> 781                                            Fulleda
#> 782                          Granyena de les Garrigues
#> 783                                            Juncosa
#> 784                                             Juneda
#> 785                                          l'Albagés
#> 786                                             l'Albi
#> 787                                    l'Espluga Calba
#> 788                                        la Floresta
#> 789                                      la Granadella
#> 790                               la Pobla de Cérvoles
#> 791                                les Borges Blanques
#> 792                                           Puiggròs
#> 793                                             Tarrés
#> 794                                            Vinaixa
#> 795                                         Argelaguer
#> 796                                             Besalú
#> 797                                              Beuda
#> 798                           Castellfollit de la Roca
#> 799                                   la Vall d'en Bas
#> 800                                  la Vall de Bianya
#> 801                              les Planes d'Hostoles
#> 802                                         les Preses
#> 803                                    Maià de Montcal
#> 804                                             Mieres
#> 805                                     Montagut i Oix
#> 806                                               Olot
#> 807                                           Riudaura
#> 808                                   Sales de Llierca
#> 809                            Sant Aniol de Finestres
#> 810                            Sant Feliu de Pallerols
#> 811                                       Sant Ferriol
#> 812                              Sant Jaume de Llierca
#> 813                                Sant Joan les Fonts
#> 814                                          Santa Pau
#> 815                                           Tortellà
#> 816                                          Aiguaviva
#> 817                                            Bescanó
#> 818                                            Bordils
#> 819                                          Campllong
#> 820                                       Canet d'Adri
#> 821                                  Cassà de la Selva
#> 822                                              Celrà
#> 823                                      Cervià de Ter
#> 824                                              Flaçà
#> 825                               Fornells de la Selva
#> 826                                             Girona
#> 827                                               Juià
#> 828                                         Llagostera
#> 829                                         Llambilles
#> 830                                         Madremanya
#> 831                                              Quart
#> 832                                               Salt
#> 833                                  Sant Andreu Salou
#> 834                                       Sant Gregori
#> 835                                Sant Joan de Mollet
#> 836                                Sant Jordi Desvalls
#> 837                                Sant Julià de Ramis
#> 838                              Sant Martí de Llémena
#> 839                                    Sant Martí Vell
#> 840                                      Sarrià de Ter
#> 841                                        Vilablareix
#> 842                                         Viladasens
#> 843                                             Alpens
#> 844                                              Lluçà
#> 845                                              Olost
#> 846                                             Oristà
#> 847                                           Perafita
#> 848                                  Prats de Lluçanès
#> 849                                Sant Martí d'Albars
#> 850                                          Sobremunt
#> 851                                             Alella
#> 852                                      Arenys de Mar
#> 853                                     Arenys de Munt
#> 854                                          Argentona
#> 855                                     Cabrera de Mar
#> 856                                            Cabrils
#> 857                                    Caldes d'Estrac
#> 858                                            Calella
#> 859                                       Canet de Mar
#> 860                                            Dosrius
#> 861                                          el Masnou
#> 862                                     Malgrat de Mar
#> 863                                             Mataró
#> 864                                            Montgat
#> 865                                             Òrrius
#> 866                                          Palafolls
#> 867                                      Pineda de Mar
#> 868                                     Premià de Dalt
#> 869                                      Premià de Mar
#> 870                          Sant Andreu de Llavaneres
#> 871                            Sant Cebrià de Vallalta
#> 872                             Sant Iscle de Vallalta
#> 873                                    Sant Pol de Mar
#> 874                             Sant Vicenç de Montalt
#> 875                                      Santa Susanna
#> 876                                               Teià
#> 877                                              Tiana
#> 878                                            Tordera
#> 879                                   Vilassar de Dalt
#> 880                                    Vilassar de Mar
#> 881                                            Calders
#> 882                                         Castellcir
#> 883                                      Castellterçol
#> 884                                        Collsuspina
#> 885                                            Granera
#> 886                                           l'Estany
#> 887                                               Moià
#> 888                               Monistrol de Calders
#> 889                                 Sant Quirze Safaja
#> 890                                  Santa Maria d'Oló
#> 891                                            Alcanar
#> 892                                            Amposta
#> 893                                          Freginals
#> 894                                             Godall
#> 895                                          la Galera
#> 896                                          la Ràpita
#> 897                                           la Sénia
#> 898                                   Mas de Barberans
#> 899                                        Masdenverge
#> 900                                Sant Jaume d'Enveja
#> 901                                      Santa Bàrbara
#> 902                                          Ulldecona
#> 903                                               Àger
#> 904                                             Albesa
#> 905                                            Algerri
#> 906                                   Alòs de Balaguer
#> 907                                    Artesa de Segre
#> 908                                           Balaguer
#> 909                                 Bellcaire d'Urgell
#> 910                                  Bellmunt d'Urgell
#> 911                                         Cabanabona
#> 912                                           Camarasa
#> 913                               Castelló de Farfanya
#> 914                                            Cubells
#> 915                                           Foradada
#> 916                                   Ivars de Noguera
#> 917                                la Baronia de Rialb
#> 918                                   la Sentiu de Sió
#> 919                        les Avellanes i Santa Linya
#> 920                                         Menàrguens
#> 921                                            Montgai
#> 922                                             Oliola
#> 923                                     Os de Balaguer
#> 924                                           Penelles
#> 925                                              Ponts
#> 926                                           Preixens
#> 927                                            Térmens
#> 928                                            Tiurana
#> 929                                         Torrelameu
#> 930                             Vallfogona de Balaguer
#> 931                                Vilanova de l'Aguda
#> 932                                   Vilanova de Meià
#> 933                                            Balenyà
#> 934                                        Calldetenes
#> 935                                          Centelles
#> 936                                           el Brull
#> 937                                         Espinelves
#> 938                                        Folgueroles
#> 939                                               Gurb
#> 940                                         l'Esquirol
#> 941                                 les Masies de Roda
#> 942                             les Masies de Voltregà
#> 943                                              Malla
#> 944                                            Manlleu
#> 945                                         Montesquiu
#> 946                                         Muntanyola
#> 947                                               Orís
#> 948                                        Roda de Ter
#> 949                                      Rupit i Pruit
#> 950                            Sant Agustí de Lluçanès
#> 951                             Sant Bartomeu del Grau
#> 952                               Sant Boi de Lluçanès
#> 953                           Sant Hipòlit de Voltregà
#> 954                            Sant Julià de Vilatorta
#> 955                            Sant Martí de Centelles
#> 956                               Sant Pere de Torelló
#> 957                              Sant Quirze de Besora
#> 958                            Sant Sadurní d'Osormort
#> 959                             Sant Vicenç de Torelló
#> 960                          Santa Cecília de Voltregà
#> 961                             Santa Eugènia de Berga
#> 962                         Santa Eulàlia de Riuprimer
#> 963                              Santa Maria de Besora
#> 964                                               Seva
#> 965                                               Sora
#> 966                                           Taradell
#> 967                                         Tavèrnoles
#> 968                                           Tavertet
#> 969                                               Tona
#> 970                                            Torelló
#> 971                                                Vic
#> 972                                              Vidrà
#> 973                                           Viladrau
#> 974                                    Vilanova de Sau
#> 975                                 Abella de la Conca
#> 976                                     Castell de Mur
#> 977                                      Conca de Dalt
#> 978                                  Gavet de la Conca
#> 979                                Isona i Conca Dellà
#> 980                                  la Pobla de Segur
#> 981                               la Torre de Cabdella
#> 982                                           Llimiana
#> 983                                   Salàs de Pallars
#> 984                            Sant Esteve de la Sarga
#> 985                                 Sarroca de Bellera
#> 986                                          Senterada
#> 987                                             Talarn
#> 988                                              Tremp
#> 989                                              Alins
#> 990                                           Alt Àneu
#> 991                                       Baix Pallars
#> 992                                              Espot
#> 993                                     Esterri d'Àneu
#> 994                                  Esterri de Cardós
#> 995                                            Farrera
#> 996                                la Guingueta d'Àneu
#> 997                                           Lladorre
#> 998                                           Llavorsí
#> 999                                              Rialp
#> 1000                                         Soriguera
#> 1001                                              Sort
#> 1002                                            Tírvia
#> 1003                                    Vall de Cardós
#> 1004                                           Barbens
#> 1005                                Bell-lloc d'Urgell
#> 1006                                           Bellvís
#> 1007                               Castellnou de Seana
#> 1008                              el Palau d'Anglesola
#> 1009                                           el Poal
#> 1010                                        Fondarella
#> 1011                                            Golmés
#> 1012                                    Ivars d'Urgell
#> 1013                                           Linyola
#> 1014                                         Miralcamp
#> 1015                                        Mollerussa
#> 1016                                           Sidamon
#> 1017                                       Torregrossa
#> 1018                                         Vila-sana
#> 1019                              Vilanova de Bellpuig
#> 1020                                          Banyoles
#> 1021                                             Camós
#> 1022                                Cornellà del Terri
#> 1023                                           Crespià
#> 1024                                         Esponellà
#> 1025                                       Fontcoberta
#> 1026                                 Palol de Revardit
#> 1027                                         Porqueres
#> 1028                          Sant Miquel de Campmajor
#> 1029                                           Serinyà
#> 1030                                        Vilademuls
#> 1031                              Bellmunt del Priorat
#> 1032                                           Cabacés
#> 1033                                          Capçanes
#> 1034                            Cornudella de Montsant
#> 1035                                          el Lloar
#> 1036                                        el Masroig
#> 1037                                          el Molar
#> 1038                                      els Guiamets
#> 1039                                            Falset
#> 1040                                        Gratallops
#> 1041                             la Bisbal de Montsant
#> 1042                                        la Figuera
#> 1043                             la Morera de Montsant
#> 1044                           la Torre de Fontaubella
#> 1045                                   la Vilella Alta
#> 1046                                  la Vilella Baixa
#> 1047                                             Marçà
#> 1048                                          Margalef
#> 1049                                          Poboleda
#> 1050                                           Porrera
#> 1051                             Pradell de la Teixeta
#> 1052                               Torroja del Priorat
#> 1053                                       Ulldemolins
#> 1054                                              Ascó
#> 1055                                        Benissanet
#> 1056                                              Flix
#> 1057                                            Garcia
#> 1058                                          Ginestar
#> 1059                                   la Palma d'Ebre
#> 1060                            la Torre de l'Espanyol
#> 1061                                           Miravet
#> 1062                                       Móra d'Ebre
#> 1063                                      Móra la Nova
#> 1064                                          Rasquera
#> 1065                                  Riba-roja d'Ebre
#> 1066                                           Tivissa
#> 1067                                           Vinebre
#> 1068                                       Campdevànol
#> 1069                                         Campelles
#> 1070                                         Camprodon
#> 1071                                           Gombrèn
#> 1072                                       les Llosses
#> 1073                                           Llanars
#> 1074                                             Molló
#> 1075                                            Ogassa
#> 1076                                          Pardines
#> 1077                                          Planoles
#> 1078                                          Queralbs
#> 1079                                   Ribes de Freser
#> 1080                                            Ripoll
#> 1081                        Sant Joan de les Abadesses
#> 1082                              Sant Pau de Segúries
#> 1083                                          Setcases
#> 1084                                             Toses
#> 1085                            Vallfogona de Ripollès
#> 1086                                 Vilallonga de Ter
#> 1087                                            Biosca
#> 1088                                           Cervera
#> 1089                                  els Plans de Sió
#> 1090                                           Estaràs
#> 1091                                       Granyanella
#> 1092                               Granyena de Segarra
#> 1093                                          Guissona
#> 1094                                            Ivorra
#> 1095                                        les Oluges
#> 1096                                        Massoteres
#> 1097                               Montoliu de Segarra
#> 1098                              Montornès de Segarra
#> 1099                                   Ribera d'Ondara
#> 1100                                           Sanaüja
#> 1101                            Sant Guim de Freixenet
#> 1102                             Sant Guim de la Plana
#> 1103                                        Sant Ramon
#> 1104                                          Talavera
#> 1105                                Tarroja de Segarra
#> 1106                                              Torà
#> 1107                             Torrefeta i Florejacs
#> 1108                                            Aitona
#> 1109                                        Albatàrrec
#> 1110                                            Alcanó
#> 1111                                          Alcarràs
#> 1112                                         Alcoletge
#> 1113                                          Alfarràs
#> 1114                                             Alfés
#> 1115                                          Alguaire
#> 1116                                        Almacelles
#> 1117                                          Almatret
#> 1118                                           Almenar
#> 1119                                           Alpicat
#> 1120                                  Artesa de Lleida
#> 1121                                              Aspa
#> 1122                                Benavent de Segrià
#> 1123                                           Corbins
#> 1124                                        els Alamús
#> 1125                     Gimenells i el Pla de la Font
#> 1126                                la Granja d'Escarp
#> 1127                                       la Portella
#> 1128                                        Llardecans
#> 1129                                            Lleida
#> 1130                                            Maials
#> 1131                                      Massalcoreig
#> 1132                                Montoliu de Lleida
#> 1133                                Puigverd de Lleida
#> 1134                                          Rosselló
#> 1135                                 Sarroca de Lleida
#> 1136                                             Seròs
#> 1137                                             Soses
#> 1138                                          Sudanell
#> 1139                                            Sunyer
#> 1140                                      Torre-serona
#> 1141                                       Torrebesses
#> 1142                                      Torrefarrera
#> 1143                                   Torres de Segre
#> 1144                              Vilanova de la Barca
#> 1145                                Vilanova de Segrià
#> 1146                                              Amer
#> 1147                                            Anglès
#> 1148                                          Arbúcies
#> 1149                                            Blanes
#> 1150                                             Breda
#> 1151                     Brunyola i Sant Martí Sapresa
#> 1152                               Caldes de Malavella
#> 1153                                Fogars de la Selva
#> 1154                                         Hostalric
#> 1155                                 la Cellera de Ter
#> 1156                                     Lloret de Mar
#> 1157                                          Massanes
#> 1158                               Maçanet de la Selva
#> 1159                                              Osor
#> 1160                                  Riells i Viabrea
#> 1161                                        Riudarenes
#> 1162                            Riudellots de la Selva
#> 1163                           Sant Feliu de Buixalleu
#> 1164                                Sant Hilari Sacalm
#> 1165                     Sant Julià del Llor i Bonmatí
#> 1166                           Santa Coloma de Farners
#> 1167                                              Sils
#> 1168                                          Susqueda
#> 1169                                      Tossa de Mar
#> 1170                                          Vidreres
#> 1171                                    Vilobí d'Onyar
#> 1172                            Castellar de la Ribera
#> 1173                              Clariana de Cardener
#> 1174                                           Guixers
#> 1175                                la Coma i la Pedra
#> 1176                                        la Molsosa
#> 1177                                           Lladurs
#> 1178                                           Llobera
#> 1179                                             Navès
#> 1180                                              Odèn
#> 1181                                             Olius
#> 1182                                Pinell de Solsonès
#> 1183                                             Pinós
#> 1184                                             Riner
#> 1185                           Sant Llorenç de Morunys
#> 1186                                           Solsona
#> 1187                                         Altafulla
#> 1188                                         Constantí
#> 1189                                          Creixell
#> 1190                                        el Catllar
#> 1191                                         el Morell
#> 1192                                    els Pallaresos
#> 1193                                        la Canonja
#> 1194                                    la Nou de Gaià
#> 1195                               la Pobla de Mafumet
#> 1196                             la Pobla de Montornès
#> 1197                                  la Riera de Gaià
#> 1198                                        la Secuita
#> 1199                                          Perafort
#> 1200                                             Renau
#> 1201                                      Roda de Berà
#> 1202                                            Salomó
#> 1203                                             Salou
#> 1204                                         Tarragona
#> 1205                                     Torredembarra
#> 1206                                  Vespella de Gaià
#> 1207                                         Vila-seca
#> 1208                               Vilallonga del Camp
#> 1209                                             Arnes
#> 1210                                             Batea
#> 1211                                               Bot
#> 1212                                           Caseres
#> 1213                                    Corbera d'Ebre
#> 1214                                 el Pinell de Brai
#> 1215                                           Gandesa
#> 1216                                Horta de Sant Joan
#> 1217                                      la Fatarella
#> 1218                             la Pobla de Massaluca
#> 1219                                     Prat de Comte
#> 1220                                 Vilalba dels Arcs
#> 1221                                          Agramunt
#> 1222                                         Anglesola
#> 1223                                          Belianes
#> 1224                                          Bellpuig
#> 1225                                       Castellserà
#> 1226                                        Ciutadilla
#> 1227                             els Omells de na Gaia
#> 1228                                           Guimerà
#> 1229                                        la Fuliola
#> 1230                                             Maldà
#> 1231                                             Nalec
#> 1232                                       Ossó de Sió
#> 1233                                          Preixana
#> 1234                               Puigverd d'Agramunt
#> 1235                             Sant Martí de Riucorb
#> 1236                                           Tàrrega
#> 1237                                         Tornabous
#> 1238                            Vallbona de les Monges
#> 1239                                             Verdú
#> 1240                                        Vilagrassa
#> 1241                                  Badia del Vallès
#> 1242                                Barberà del Vallès
#> 1243                              Castellar del Vallès
#> 1244                                     Castellbisbal
#> 1245                             Cerdanyola del Vallès
#> 1246                                           Gallifa
#> 1247                                        Matadepera
#> 1248                                 Montcada i Reixac
#> 1249                          Palau-solità i Plegamans
#> 1250                                           Polinyà
#> 1251                                         Rellinars
#> 1252                                          Ripollet
#> 1253                                              Rubí
#> 1254                                          Sabadell
#> 1255                             Sant Cugat del Vallès
#> 1256                               Sant Llorenç Savall
#> 1257                            Sant Quirze del Vallès
#> 1258                          Santa Perpètua de Mogoda
#> 1259                                         Sentmenat
#> 1260                                          Terrassa
#> 1261                                        Ullastrell
#> 1262                                        Vacarisses
#> 1263                                     Viladecavalls
#> 1264                                        Aiguafreda
#> 1265                           Bigues i Riells del Fai
#> 1266                                 Caldes de Montbui
#> 1267                                           Campins
#> 1268                                        Canovelles
#> 1269                                 Cànoves i Samalús
#> 1270                                          Cardedeu
#> 1271                                   Figaró-Montmany
#> 1272                                Fogars de Montclús
#> 1273                                        Granollers
#> 1274                                            Gualba
#> 1275                              l'Ametlla del Vallès
#> 1276                                        la Garriga
#> 1277                                       la Llagosta
#> 1278                                la Roca del Vallès
#> 1279                         les Franqueses del Vallès
#> 1280                                     Lliçà d'Amunt
#> 1281                                     Lliçà de Vall
#> 1282                                Llinars del Vallès
#> 1283                                       Martorelles
#> 1284                                 Mollet del Vallès
#> 1285                                          Montmeló
#> 1286                              Montornès del Vallès
#> 1287                                          Montseny
#> 1288                                 Parets del Vallès
#> 1289                          Sant Antoni de Vilamajor
#> 1290                                       Sant Celoni
#> 1291                       Sant Esteve de Palautordera
#> 1292                             Sant Feliu de Codines
#> 1293                        Sant Fost de Campsentelles
#> 1294                            Sant Pere de Vilamajor
#> 1295                          Santa Eulàlia de Ronçana
#> 1296                        Santa Maria de Martorelles
#> 1297                       Santa Maria de Palautordera
#> 1298                                        Tagamanent
#> 1299                                      Vallgorguina
#> 1300                                       Vallromanes
#> 1301                                  Vilalba Sasserra
#> 1302                               Vilanova del Vallès
#> 1303                                          València
#> 1304                                  Alcalà de Xivert
#> 1305                                         Benicarló
#> 1306                                             Càlig
#> 1307                                     Canet lo Roig
#> 1308                                 Castell de Cabres
#> 1309                               Cervera del Maestre
#> 1310                                           la Jana
#> 1311                             la Pobla de Benifassà
#> 1312                                     la Salzadella
#> 1313                             Peníscola / Peñíscola
#> 1314                                           Rossell
#> 1315                            Sant Jordi / San Jorge
#> 1316                                        Sant Mateu
#> 1317                                Sant Rafel del Riu
#> 1318                         Santa Magdalena de Pulpis
#> 1319                                         Traiguera
#> 1320                                           Vinaròs
#> 1321                                              Xert
#> 1322                              Guardamar del Segura
#> 1323                                        Crevillent
#> 1324                                       Elx / Elche
#> 1325                                        Santa Pola
#> 1326                            Albalat dels Tarongers
#> 1327                              Alfara de la Baronia
#> 1328                                 Algar de Palància
#> 1329                                  Algímia d'Alfara
#> 1330                                         Benavites
#> 1331                            Benifairó de les Valls
#> 1332                              Canet d'en Berenguer
#> 1333                                         Estivella
#> 1334                                             Faura
#> 1335                                             Gilet
#> 1336                                            Petrés
#> 1337                                Quart de les Valls
#> 1338                                          Quartell
#> 1339                                  Sagunt / Sagunto
#> 1340                                            Segart
#> 1341                                     Torres Torres
#> 1342                                        Benaguasil
#> 1343                                         Benissanó
#> 1344                                            Bétera
#> 1345                                           Casinos
#> 1346                                          l'Eliana
#> 1347                              la Pobla de Vallbona
#> 1348                                            Llíria
#> 1349                                 Nàquera / Náquera
#> 1350                                            Olocau
#> 1351                                Riba-roja de Túria
#> 1352                                             Serra
#> 1353                                       Vilamarxant
#> 1354                                             Agres
#> 1355                                          Alcoleja
#> 1356                                          Alcosser
#> 1357                                          Alfafara
#> 1358                                         Almudaina
#> 1359                                           Balones
#> 1360                                           Benasau
#> 1361                                         Beniarrés
#> 1362                                         Benilloba
#> 1363                                          Benillup
#> 1364                                       Benimarfull
#> 1365                                        Benimassot
#> 1366                                        Cocentaina
#> 1367                                            Fageca
#> 1368                                           Famorca
#> 1369                                           Gaianes
#> 1370                                             Gorga
#> 1371                                l'Alqueria d'Asnar
#> 1372                                   l'Orxa / Lorcha
#> 1373                                           Millena
#> 1374                                     Muro de Alcoy
#> 1375                                            Planes
#> 1376                                     Quatretondeta
#> 1377                                            Tollos
#> 1378       el Fondó de les Neus / Hondón de las Nieves
#> 1379                             Hondón de los Frailes
#> 1380                                 el Pinós / Pinoso
#> 1381                                           Algueña
#> 1382                                         la Romana
#> 1383                                 Monòver / Monóvar
#> 1384                                           Novelda
#> 1385                                            Petrer
#> 1386                                       Castellfort
#> 1387                                        Cinctorres
#> 1388                                           Forcall
#> 1389                                           Herbers
#> 1390                                la Mata de Morella
#> 1391                                         Todolella
#> 1392                                           Morella
#> 1393                                         Palanques
#> 1394                                Portell de Morella
#> 1395                             Zorita del Maestrazgo
#> 1396                                         Vallibona
#> 1397                  Vilafranca / Villafranca del Cid
#> 1398                                          Villores
#> 1399                                             Agost
#> 1400                                            Aigües
#> 1401                                Alacant / Alicante
#> 1402                                             Busot
#> 1403                                       el Campello
#> 1404           la Torre de les Maçanes / Torremanzanas
#> 1405                                          Mutxamel
#> 1406                               Sant Joan d'Alacant
#> 1407 Sant Vicent del Raspeig / San Vicente del Raspeig
#> 1408                                   Xixona / Jijona
#> 1409                                            Costur
#> 1410                                        Figueroles
#> 1411                                          l'Alcora
#> 1412                               les Useres / Useras
#> 1413                          Llucena / Lucena del Cid
#> 1414                           Vistabella del Maestrat
#> 1415                                    Xodos / Chodos
#> 1416                                     Alcoi / Alcoy
#> 1417                               Banyeres de Mariola
#> 1418                                        Benifallim
#> 1419                                          Castalla
#> 1420                                               Ibi
#> 1421                                              Onil
#> 1422                                         Penàguila
#> 1423                                              Tibi
#> 1424                                        Albocàsser
#> 1425                                 Ares del Maestrat
#> 1426                             Atzeneta del Maestrat
#> 1427                                         Benafigos
#> 1428                                          Benassal
#> 1429                                              Catí
#> 1430                                             Culla
#> 1431                                     la Serratella
#> 1432                              la Torre d'en Besora
#> 1433                                             Tírig
#> 1434                                    Vilar de Canes
#> 1435                                         Beneixama
#> 1436                                              Biar
#> 1437                 el Camp de Mirra / Campo de Mirra
#> 1438                                            Cañada
#> 1439                              Albalat dels Sorells
#> 1440                               Alboraia / Alboraya
#> 1441                                         Albuixech
#> 1442                              Alfara del Patriarca
#> 1443                                         Almàssera
#> 1444                              Bonrepòs i Mirambell
#> 1445                                         Burjassot
#> 1446                            el Puig de Santa Maria
#> 1447                                         Emperador
#> 1448                                             Foios
#> 1449                                           Godella
#> 1450                               la Pobla de Farnals
#> 1451                                      Massalfassar
#> 1452                                      Massamagrell
#> 1453                                           Meliana
#> 1454                                Montcada / Moncada
#> 1455                                           Museros
#> 1456                                           Paterna
#> 1457                                             Puçol
#> 1458                                       Rafelbunyol
#> 1459                                          Rocafort
#> 1460                                 Tavernes Blanques
#> 1461                                          Vinalesa
#> 1462                                           Alaquàs
#> 1463                                             Albal
#> 1464                                          Alcàsser
#> 1465                                            Aldaia
#> 1466                                           Alfafar
#> 1467                                        Benetússer
#> 1468                                       Beniparrell
#> 1469                                         Catarroja
#> 1470                              Llocnou de la Corona
#> 1471                                           Manises
#> 1472                                        Massanassa
#> 1473                                           Mislata
#> 1474                                          Paiporta
#> 1475                                           Picanya
#> 1476                                         Picassent
#> 1477                                   Quart de Poblet
#> 1478                                            Sedaví
#> 1479                                             Silla
#> 1480                                           Torrent
#> 1481                                         Xirivella
#> 1482                                           Barxeta
#> 1483                                            Canals
#> 1484                                             Cerdà
#> 1485                                        el Genovés
#> 1486                                          Estubeny
#> 1487                             l'Alcúdia de Crespins
#> 1488                             la Font de la Figuera
#> 1489                           la Granja de la Costera
#> 1490                                 la Llosa de Ranes
#> 1491                                  Llanera de Ranes
#> 1492                             Llocnou d'en Fenollet
#> 1493                                 Moixent / Mogente
#> 1494                                           Montesa
#> 1495                                           Novetlè
#> 1496                                  Rotglà i Corberà
#> 1497                                          Torrella
#> 1498                                           Vallada
#> 1499                                            Vallés
#> 1500                                            Xàtiva
#> 1501                                          Alcalalí
#> 1502                                        Beniarbeig
#> 1503                                        Benidoleig
#> 1504                                        Benigembla
#> 1505                                          Benimeli
#> 1506                                           Benissa
#> 1507                                              Calp
#> 1508                               Castell de Castells
#> 1509                                             Dénia
#> 1510         el Poble Nou de Benitatxell / Benitachell
#> 1511                                el Ràfol d'Almúnia
#> 1512                                         el Verger
#> 1513                                       els Poblets
#> 1514                                    Gata de Gorgos
#> 1515                                         l'Atzúbia
#> 1516                                  la Vall d'Alcalà
#> 1517                                     la Vall d'Ebo
#> 1518                              la Vall de Gallinera
#> 1519                                 la Vall de Laguar
#> 1520                                            Llíber
#> 1521                                             Murla
#> 1522                                            Ondara
#> 1523                                              Orba
#> 1524                                           Parcent
#> 1525                                         Pedreguer
#> 1526                                              Pego
#> 1527                                             Sagra
#> 1528                                   Sanet y Negrals
#> 1529                                            Senija
#> 1530                                           Teulada
#> 1531                                            Tormos
#> 1532                                     Xàbia / Jávea
#> 1533                                              Xaló
#> 1534                                             Altea
#> 1535                                          Beniardà
#> 1536                                          Benidorm
#> 1537                                          Benifato
#> 1538                                       Benimantell
#> 1539                                           Bolulla
#> 1540                               Callosa d'en Sarrià
#> 1541                                         Confrides
#> 1542                           el Castell de Guadalest
#> 1543                                         Finestrat
#> 1544                                    l'Alfàs del Pi
#> 1545                                          la Nucia
#> 1546                      la Vila Joiosa / Villajoyosa
#> 1547                                            Orxeta
#> 1548                                             Polop
#> 1549                                            Relleu
#> 1550                                             Sella
#> 1551                                           Tàrbena
#> 1552                                         Almassora
#> 1553                            Benicàssim / Benicasim
#> 1554                                           Benlloc
#> 1555                                           Borriol
#> 1556                                           Cabanes
#> 1557      Castelló de la Plana / Castellón de la Plana
#> 1558                                  la Pobla Tornesa
#> 1559                                 Sierra Engarcerán
#> 1560                             la Torre d'en Doménec
#> 1561                                       Vall d'Alba
#> 1562                              les Coves de Vinromà
#> 1563                          Orpesa / Oropesa del Mar
#> 1564                                 Sant Joan de Moró
#> 1565                                       Torreblanca
#> 1566                                         Vilafamés
#> 1567                                Vilanova d'Alcolea
#> 1568                                               Aín
#> 1569                                          Almenara
#> 1570                                            Artana
#> 1571                                             Betxí
#> 1572                               Borriana / Burriana
#> 1573                                            Eslida
#> 1574                                     Alfondeguilla
#> 1575                                    Alcudia de Veo
#> 1576                                          la Llosa
#> 1577                                    la Vall d'Uixó
#> 1578                                      la Vilavella
#> 1579        les Alqueries / Alquerías del Niño Perdido
#> 1580                                           Moncofa
#> 1581                                             Nules
#> 1582                                              Onda
#> 1583                                        Ribesalbes
#> 1584                                    Suera / Sueras
#> 1585                                             Tales
#> 1586                                         Vila-real
#> 1587                                 Xilxes / Chilches
#> 1588                                           Alberic
#> 1589                               Alcàntera de Xúquer
#> 1590                                            Alfarb
#> 1591                                          Algemesí
#> 1592                                           Alginet
#> 1593                                            Alzira
#> 1594                                           Antella
#> 1595                                         Beneixida
#> 1596                                          Benifaió
#> 1597                                          Benimodo
#> 1598                                        Benimuslem
#> 1599                                        Carcaixent
#> 1600                                            Càrcer
#> 1601                                            Carlet
#> 1602                                          Castelló
#> 1603                                           Catadau
#> 1604                                             Cotes
#> 1605                                           Gavarda
#> 1606                                        Guadassuar
#> 1607                                         l'Alcúdia
#> 1608                                           l'Énova
#> 1609                                   la Pobla Llarga
#> 1610                                           Llombai
#> 1611                                            Manuel
#> 1612                                        Massalavés
#> 1613                                 Montroi / Montroy
#> 1614                                        Montserrat
#> 1615                                       Rafelguaraf
#> 1616                                              Real
#> 1617                                       Sant Joanet
#> 1618                                           Sellent
#> 1619                                           Senyera
#> 1620                                        Sumacàrcer
#> 1621                                             Turís
#> 1622                              Albalat de la Ribera
#> 1623                                        Almussafes
#> 1624                                Benicull de Xúquer
#> 1625                                           Corbera
#> 1626                                           Cullera
#> 1627                                            Favara
#> 1628                                         Fortaleny
#> 1629                                            Llaurí
#> 1630                                 Polinyà de Xúquer
#> 1631                                             Riola
#> 1632                                           Sollana
#> 1633                                             Sueca
#> 1634                                              Ador
#> 1635                                           Alfauir
#> 1636                                          Almiserà
#> 1637                                          Almoines
#> 1638                                              Barx
#> 1639                                       Bellreguard
#> 1640                                          Beniarjó
#> 1641                         Benifairó de la Valldigna
#> 1642                                           Beniflà
#> 1643                                        Benirredrà
#> 1644                       Castellonet de la Conquesta
#> 1645                                            Daimús
#> 1646                                 el Real de Gandia
#> 1647                                            Gandia
#> 1648                             Guardamar de la Safor
#> 1649                         l'Alqueria de la Comtessa
#> 1650                               la Font d'en Carròs
#> 1651                            Llocnou de Sant Jeroni
#> 1652                                           Miramar
#> 1653                                             Oliva
#> 1654                                   Palma de Gandía
#> 1655                                           Palmera
#> 1656                                             Piles
#> 1657                                           Potries
#> 1658                                        Rafelcofer
#> 1659                                            Ròtova
#> 1660                             Simat de la Valldigna
#> 1661                          Tavernes de la Valldigna
#> 1662                           Vilallonga / Villalonga
#> 1663                                            Xeraco
#> 1664                                            Xeresa
#> 1665                                          Agullent
#> 1666                                 Aielo de Malferit
#> 1667                                    Aielo de Rugat
#> 1668                                           Albaida
#> 1669                                         Alfarrasí
#> 1670                                Atzeneta d'Albaida
#> 1671                                           Bèlgida
#> 1672                                            Bellús
#> 1673                                         Beniatjar
#> 1674                                         Benicolet
#> 1675                                         Benigànim
#> 1676                                         Benissoda
#> 1677                                        Benissuera
#> 1678                                         Bocairent
#> 1679                                            Bufali
#> 1680                                         Carrícola
#> 1681                                 Castelló de Rugat
#> 1682                                        el Palomar
#> 1683                                    Ráfol de Salem
#> 1684                           Fontanars dels Alforins
#> 1685                                     Guadasséquies
#> 1686                                         l'Olleria
#> 1687                                  la Pobla del Duc
#> 1688                                          Llutxent
#> 1689                                       Montaverner
#> 1690                         Montitxelvo / Montichelvo
#> 1691                                         Ontinyent
#> 1692                                              Otos
#> 1693                                             Pinet
#> 1694                                       Quatretonda
#> 1695                                             Rugat
#> 1696                                             Salem
#> 1697                                           Sempere
#> 1698                                         Terrateig
#> 1699                                  l'Alguer/Alghero
```
