# Centres administratius de les relacions dels municipis dels Països Catalans

Dades de les localitats que fan d'`admin_centre` dels municipis dels
Països Catalans.

## Ús

``` r
loc_admin_centre_municipis
```

## Format

Un `data.frame` amb dades de les 1673 localitats establertes com a
`admin_centre` de les relacions dels municipis per les següents 10
variables.

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

- ref:INSEE:

  Etiqueta `ref:INSEE`.

## Vegeu també

Altres bases de dades de referència:
[`loc_ref`](https://osm-catalan.github.io/monitorOSM/docs/reference/loc_ref.md),
[`PPCC`](https://osm-catalan.github.io/monitorOSM/docs/reference/PPCC.md),
[`municipis`](https://osm-catalan.github.io/monitorOSM/docs/reference/municipis.md),
[`comarques`](https://osm-catalan.github.io/monitorOSM/docs/reference/comarques.md),
[`territoris`](https://osm-catalan.github.io/monitorOSM/docs/reference/territoris.md).

## Exemples

``` r
loc_admin_centre_municipis[, c("name:ca", "regio", "municipi", "name")]
#>                                    name:ca     regio
#> 1                                  Salardú      Aran
#> 2                             Arres de Jos      Aran
#> 3                                   Bausén      Aran
#> 4                                  Bossòst      Aran
#> 5                                  Canejan      Aran
#> 6                                es Bordes      Aran
#> 7                                      Lés      Aran
#> 8                                   Viella      Aran
#> 9                                  Vilamòs      Aran
#> 10   Angostrina i Vilanova de les Escaldes   CatNord
#> 11                                Bolquera   CatNord
#> 12                                  Dorres   CatNord
#> 13                                   Èguet   CatNord
#> 14                                    Eina   CatNord
#> 15                                  Enveig   CatNord
#> 16                                      Er   CatNord
#> 17                                 Estavar   CatNord
#> 18                Font-romeu, Odelló i Vià   CatNord
#> 19                       la Guingueta d'Ix   CatNord
#> 20                        la Tor de Querol   CatNord
#> 21                                     Llo   CatNord
#> 22                                   Naüja   CatNord
#> 23                                   Oceja   CatNord
#> 24                       Palau de Cerdanya   CatNord
#> 25                                   Porta   CatNord
#> 26                                   Portè   CatNord
#> 27                               Sallagosa   CatNord
#> 28                           Santa Llocaia   CatNord
#> 29                               Targasona   CatNord
#> 30                                      Ur   CatNord
#> 31                           Vallcebollera   CatNord
#> 32                              els Angles   CatNord
#> 33                            Font-rabiosa   CatNord
#> 34                              Formiguera   CatNord
#> 35                                Matamala   CatNord
#> 36                             Puigbalador   CatNord
#> 37                                    Real   CatNord
#> 38                              Aiguatèbia   CatNord
#> 39                                Arboçols   CatNord
#> 40                                 Campome   CatNord
#> 41                              Canavelles   CatNord
#> 42                       Castell de Vernet   CatNord
#> 43                                  Catllà   CatNord
#> 44                    Caudiers de Conflent   CatNord
#> 45                                   Clarà   CatNord
#> 46                                 Codalet   CatNord
#> 47                                   Conat   CatNord
#> 48                    Cornellà de Conflent   CatNord
#> 49                                  Llonat   CatNord
#> 50                                  Escaró   CatNord
#> 51                      Espirà de Conflent   CatNord
#> 52                                  Estoer   CatNord
#> 53                                     Eus   CatNord
#> 54                                 Fillols   CatNord
#> 55                               Finestret   CatNord
#> 56                             Fontpedrosa   CatNord
#> 57                                   Fullà   CatNord
#> 58                               Glorianes   CatNord
#> 59                                     Jóc   CatNord
#> 60                                  Jújols   CatNord
#> 61                            la Cabanassa   CatNord
#> 62                              la Llaguna   CatNord
#> 63                            Marqueixanes   CatNord
#> 64                                  Mentet   CatNord
#> 65                                   Molig   CatNord
#> 66                               Montlluís   CatNord
#> 67                                  Mosset   CatNord
#> 68                                  Noedes   CatNord
#> 69                                    Nyer   CatNord
#> 70                                   Oleta   CatNord
#> 71                                 Orbanyà   CatNord
#> 72                                  Orellà   CatNord
#> 73                                      Pi   CatNord
#> 74                                  Planès   CatNord
#> 75                                   Prada   CatNord
#> 76                                  Ralleu   CatNord
#> 77                                     Rià   CatNord
#> 78                                 Rigardà   CatNord
#> 79                                   Rodés   CatNord
#> 80                                   Sançà   CatNord
#> 81                  Sant Pere dels Forcats   CatNord
#> 82                                  Saorra   CatNord
#> 83                                   Sautó   CatNord
#> 84                                Serdinyà   CatNord
#> 85                                 Soanyes   CatNord
#> 86                                 Tarerac   CatNord
#> 87                                Taurinyà   CatNord
#> 88                                    Toès   CatNord
#> 89                             Vallestàvia   CatNord
#> 90                               Vallmanya   CatNord
#> 91                                  Vernet   CatNord
#> 92                  Vilafranca de Conflent   CatNord
#> 93                                   Vinçà   CatNord
#> 94                                 Ansinyà   CatNord
#> 95                               Bellestar   CatNord
#> 96                                Campossí   CatNord
#> 97                                Caramany   CatNord
#> 98                               Cassanyes   CatNord
#> 99                    Caudiers de Fenollet   CatNord
#> 100                              Centernac   CatNord
#> 101                               El Viver   CatNord
#> 102                                Felluns   CatNord
#> 103                               Fenollet   CatNord
#> 104                            les Cabanes   CatNord
#> 105                             L'Esquerda   CatNord
#> 106                       La Tor de França   CatNord
#> 107                                 Lançac   CatNord
#> 108                                  Maurí   CatNord
#> 109                   Montalbà del Castell   CatNord
#> 110                    Pézillà de Conflent   CatNord
#> 111                               Planeses   CatNord
#> 112                        Prats de Sornià   CatNord
#> 113                              Prunyanes   CatNord
#> 114                             Rasigueres   CatNord
#> 115                               Rebollet   CatNord
#> 116                 Sant Martí de Fenollet   CatNord
#> 117                   Sant Pau de Fenollet   CatNord
#> 118                                 Sornià   CatNord
#> 119                              Trevillac   CatNord
#> 120                                 Trillà   CatNord
#> 121                                   Virà   CatNord
#> 122                                 Alenyà   CatNord
#> 123                               Argelers   CatNord
#> 124                                  Bages   CatNord
#> 125                                 Baixàs   CatNord
#> 126                  Banyuls de la Marenda   CatNord
#> 127                    Banyuls dels Aspres   CatNord
#> 128                                    Bao   CatNord
#> 129                                 Bompàs   CatNord
#> 130                                 Brullà   CatNord
#> 131                           Bula d'Amunt   CatNord
#> 132                            Bulaternera   CatNord
#> 133                              Cabestany   CatNord
#> 134                                  Calce   CatNord
#> 135                               Calmella   CatNord
#> 136                                Cameles   CatNord
#> 137                      Canet de Rosselló   CatNord
#> 138                                 Cànoes   CatNord
#> 139                              Casafabre   CatNord
#> 140                          Cases de Pena   CatNord
#> 141                 Castellnou dels Aspres   CatNord
#> 142                  Cervera de la Marenda   CatNord
#> 143                                 Clairà   CatNord
#> 144                    Corbera de Rosselló   CatNord
#> 145                   la Cabana de Corbera   CatNord
#> 146                  Cornellà de la Ribera   CatNord
#> 147                    Cornellà del Bèrcol   CatNord
#> 148                              Cotlliure   CatNord
#> 149                            el Barcarès   CatNord
#> 150                               el Soler   CatNord
#> 151                                el Voló   CatNord
#> 152                                   Elna   CatNord
#> 153                       Espirà de l'Aglí   CatNord
#> 154                               Estagell   CatNord
#> 155                                Forques   CatNord
#> 156                                   Illa   CatNord
#> 157                               L'Albera   CatNord
#> 158                             la Bastida   CatNord
#> 159                       la Roca d'Albera   CatNord
#> 160                        la Torre d'Elna   CatNord
#> 161                             les Cluses   CatNord
#> 162                                 Llauró   CatNord
#> 163                                 Llupià   CatNord
#> 164                                Millars   CatNord
#> 165                              Montescot   CatNord
#> 166                    Montesquiu d'Albera   CatNord
#> 167                                Montner   CatNord
#> 168                              Montoriol   CatNord
#> 169                                 Nefiac   CatNord
#> 170                                    Oms   CatNord
#> 171                                   Òpol   CatNord
#> 172                                 Ortafà   CatNord
#> 173                                   Paçà   CatNord
#> 174                        Palau del Vidre   CatNord
#> 175                           Paretstortes   CatNord
#> 176                               Perpinyà   CatNord
#> 177                   Pesillà de la Ribera   CatNord
#> 178                                    Pià   CatNord
#> 179                             Pollestres   CatNord
#> 180                               Pontellà   CatNord
#> 181                            Portvendres   CatNord
#> 182                            la Trinitat   CatNord
#> 183                                Queixàs   CatNord
#> 184                             Ribesaltes   CatNord
#> 185                               Salelles   CatNord
#> 186                                 Salses   CatNord
#> 187                  Sant Andreu de Sureda   CatNord
#> 188                Sant Cebrià de Rosselló   CatNord
#> 189               Sant Esteve del Monestir   CatNord
#> 190                     Sant Feliu d'Amunt   CatNord
#> 191                     Sant Feliu d'Avall   CatNord
#> 192                 Sant Genís de Fontanes   CatNord
#> 193                           Sant Hipòlit   CatNord
#> 194                     Sant Joan la Cella   CatNord
#> 195             Sant Llorenç de la Salanca   CatNord
#> 196                  Sant Miquel de Llotes   CatNord
#> 197                            Sant Nazari   CatNord
#> 198             Santa Coloma de la Comanda   CatNord
#> 199                     Santa Maria la Mar   CatNord
#> 200                                 Sureda   CatNord
#> 201                               Talteüll   CatNord
#> 202                                Terrats   CatNord
#> 203                                   Tesà   CatNord
#> 204                                Toluges   CatNord
#> 205                               Torderes   CatNord
#> 206                Torrelles de la Salanca   CatNord
#> 207                              Trasserra   CatNord
#> 208                               Trullars   CatNord
#> 209                                   Tuïr   CatNord
#> 210               Vilallonga de la Salanca   CatNord
#> 211                  Vilallonga dels Monts   CatNord
#> 212                             Vilamulaca   CatNord
#> 213                  Vilanova de la Ribera   CatNord
#> 214                        Vilanova de Raò   CatNord
#> 215                                Vingrau   CatNord
#> 216                                  Arles   CatNord
#> 217                                  Ceret   CatNord
#> 218                               Cortsaví   CatNord
#> 219                                Costoja   CatNord
#> 220                              el Pertús   CatNord
#> 221                                 el Tec   CatNord
#> 222                      els Banys d'Arles   CatNord
#> 223                              la Menera   CatNord
#> 224                               Montboló   CatNord
#> 225                             Montferrer   CatNord
#> 226                   Morellàs i les Illes   CatNord
#> 227             Prats de Molló i la Presta   CatNord
#> 228                                Reiners   CatNord
#> 229                Sant Joan de Pladecorts   CatNord
#> 230                Sant Llorenç de Cerdans   CatNord
#> 231                            Sant Marçal   CatNord
#> 232                            Serrallonga   CatNord
#> 233                                 Tellet   CatNord
#> 234                                 Teulís   CatNord
#> 235                                 Vivers   CatNord
#> 236                 Aiguaviva de Bergantes    Franja
#> 237                     Bellmunt de Mesquí    Franja
#> 238                    la Canyada de Beric    Franja
#> 239                           la Codonyera    Franja
#> 240                           la Ginebrosa    Franja
#> 241                           la Sorollera    Franja
#> 242                    la Torre de Vilella    Franja
#> 243                                   Faió    Franja
#> 244                   Favara de Matarranya    Franja
#> 245                                 Maella    Franja
#> 246                                 Nonasp    Franja
#> 247                                  Fraga    Franja
#> 248                             Mequinensa    Franja
#> 249                                  Saidí    Franja
#> 250                       Torrent de Cinca    Franja
#> 251                       Vilella de Cinca    Franja
#> 252                                Albelda    Franja
#> 253                                 Baells    Franja
#> 254                            Camporrells    Franja
#> 255                           Castillonroi    Franja
#> 256                             el Campell    Franja
#> 257                             el Torricó    Franja
#> 258                      Peralta de la Sal    Franja
#> 259                 Sant Esteve de Llitera    Franja
#> 260                                  Sanui    Franja
#> 261                     Tamarit de Llitera    Franja
#> 262                             Valldellou    Franja
#> 263                               Vensilló    Franja
#> 264                        Arenys de Lledó    Franja
#> 265                                 Beseit    Franja
#> 266                               Calaceit    Franja
#> 267                           Fontdespatla    Franja
#> 268                                Fórnols    Franja
#> 269                           la Freixneda    Franja
#> 270                          la Portellada    Franja
#> 271                     la Torre del Comte    Franja
#> 272                      la Vall del Tormo    Franja
#> 273                         Lledó d'Algars    Franja
#> 274                               Massalió    Franja
#> 275                               Montroig    Franja
#> 276                 Pena-roja de Tastavins    Franja
#> 277                               Queretes    Franja
#> 278                                 Ràfels    Franja
#> 279                           Torredarques    Franja
#> 280                         Vall-de-roures    Franja
#> 281                           Valljunquera    Franja
#> 282                       Areny de Noguera    Franja
#> 283                              Benavarri    Franja
#> 284                                Beranui    Franja
#> 285                                Bonansa    Franja
#> 286                             Castigaleu    Franja
#> 287                              Estopanyà    Franja
#> 288                       la Pobla de Roda    Franja
#> 289                              Lasquarri    Franja
#> 290                              Les Paüls    Franja
#> 291                              Queixigar    Franja
#> 292                               Montanui    Franja
#> 293                     Pont de Montanyana    Franja
#> 294                                Sopeira    Franja
#> 295                                  Tolba    Franja
#> 296                          Tor-la-ribera    Franja
#> 297                                Viacamp    Franja
#> 298                                Eivissa     Illes
#> 299                Sant Antoni de Portmany     Illes
#> 300                  Sant Joan de Labritja     Illes
#> 301                Sant Josep de sa Talaia     Illes
#> 302                  Santa Eulària des Riu     Illes
#> 303            Sant Francesc de Formentera     Illes
#> 304                                   Artà     Illes
#> 305                              Capdepera     Illes
#> 306                                Manacor     Illes
#> 307             Sant Llorenç des Cardassar     Illes
#> 308                            Son Servera     Illes
#> 309                                 Alaior     Illes
#> 310                             Ciutadella     Illes
#> 311                             es Castell     Illes
#> 312                            es Mercadal     Illes
#> 313                        es Migjorn Gran     Illes
#> 314                              Ferreries     Illes
#> 315                                    Maó     Illes
#> 316                             Sant Lluís     Illes
#> 317                                 Campos     Illes
#> 318                               Felanitx     Illes
#> 319                              Llucmajor     Illes
#> 320                               Santanyí     Illes
#> 321                            ses Salines     Illes
#> 322                                  Palma     Illes
#> 323                                Algaida     Illes
#> 324                                 Ariany     Illes
#> 325                                Costitx     Illes
#> 326                   Lloret de Vistalegre     Illes
#> 327                                  Llubí     Illes
#> 328                      Maria de la Salut     Illes
#> 329                               Montuïri     Illes
#> 330                                   Muro     Illes
#> 331                                  Petra     Illes
#> 332                               Porreres     Illes
#> 333                              Sant Joan     Illes
#> 334                          Santa Eugènia     Illes
#> 335                        Santa Margalida     Illes
#> 336                              Sencelles     Illes
#> 337                                  Sineu     Illes
#> 338                   Vilafranca de Bonany     Illes
#> 339                                  Alaró     Illes
#> 340                                Alcúdia     Illes
#> 341                             Binissalem     Illes
#> 342                                  Búger     Illes
#> 343                               Campanet     Illes
#> 344                                Consell     Illes
#> 345                                   Inca     Illes
#> 346                                Lloseta     Illes
#> 347                      Mancor de la Vall     Illes
#> 348                            sa Cabaneta     Illes
#> 349                               sa Pobla     Illes
#> 350                   Santa Maria del Camí     Illes
#> 351                                  Selva     Illes
#> 352                                Andratx     Illes
#> 353                            Banyalbufar     Illes
#> 354                                Bunyola     Illes
#> 355                                 Calvià     Illes
#> 356                                   Deià     Illes
#> 357                                   Lluc     Illes
#> 358                               Esporles     Illes
#> 359                             Estellencs     Illes
#> 360                              Fornalutx     Illes
#> 361                               Pollença     Illes
#> 362                            Puigpunyent     Illes
#> 363                                 Sóller     Illes
#> 364                            Valldemossa     Illes
#> 365                            Aiguamúrcia Principat
#> 366                                Alcover Principat
#> 367                                   Alió Principat
#> 368                                 Bràfim Principat
#> 369                         Cabra del Camp Principat
#> 370                                el Milà Principat
#> 371                  el Pla de Santa Maria Principat
#> 372                    el Pont d'Armentera Principat
#> 373                             el Rourell Principat
#> 374                          els Garidells Principat
#> 375                     Figuerola del Camp Principat
#> 376                                la Masó Principat
#> 377                                la Riba Principat
#> 378                               Mont-ral Principat
#> 379                              Montferri Principat
#> 380                                 Nulles Principat
#> 381                              Puigpelat Principat
#> 382                                 Querol Principat
#> 383                                Rodonyà Principat
#> 384                               Vallmoll Principat
#> 385                                  Valls Principat
#> 386                            Vila-rodona Principat
#> 387                              Vilabella Principat
#> 388                               Agullana Principat
#> 389                                Albanyà Principat
#> 390                Avinyonet de Puigventós Principat
#> 391                                Bàscara Principat
#> 392                                  Biure Principat
#> 393                     Boadella d'Empordà Principat
#> 394                               Borrassà Principat
#> 395                             Cabanelles Principat
#> 396                                Cabanes Principat
#> 397                               Cadaqués Principat
#> 398                               Campmany Principat
#> 399                             Cantallops Principat
#> 400                    Castelló d'Empúries Principat
#> 401                               Cistella Principat
#> 402                                 Colera Principat
#> 403                                Darnius Principat
#> 404                       el Far d'Empordà Principat
#> 405                    el Port de la Selva Principat
#> 406                                Espolla Principat
#> 407                               Figueres Principat
#> 408                                 Fortià Principat
#> 409                               Garrigàs Principat
#> 410                            Garriguella Principat
#> 411                            l'Armentera Principat
#> 412                               l'Escala Principat
#> 413                            la Jonquera Principat
#> 414                        la Selva de Mar Principat
#> 415                               la Vajol Principat
#> 416                                 Llançà Principat
#> 417                        Lledó d'Empordà Principat
#> 418                                  Llers Principat
#> 419                    Maçanet de Cabrenys Principat
#> 420                                Masarac Principat
#> 421                     Mollet de Peralada Principat
#> 422                                 Navata Principat
#> 423                                  Ordis Principat
#> 424                          Santa Eulàlia Principat
#> 425                        Palau-saverdera Principat
#> 426                                    Pau Principat
#> 427                                  Marzà Principat
#> 428                               Peralada Principat
#> 429                         Pont de Molins Principat
#> 430                                 Pontós Principat
#> 431                                Portbou Principat
#> 432                                  Rabós Principat
#> 433                                Riumors Principat
#> 434                                  Roses Principat
#> 435                  Sant Climent Sescebes Principat
#> 436                Sant Llorenç de la Muga Principat
#> 437                  Sant Miquel de Fluvià Principat
#> 438                              Sant Mori Principat
#> 439                     Sant Pere Pescador Principat
#> 440                Santa Llogaia d'Àlguema Principat
#> 441                              Camallera Principat
#> 442                                Siurana Principat
#> 443                               Terrades Principat
#> 444                    Torroella de Fluvià Principat
#> 445                               Ventalló Principat
#> 446                             Vila-sacra Principat
#> 447                            Vilabertran Principat
#> 448                              Viladamat Principat
#> 449                               Vilafant Principat
#> 450                              Vilajuïga Principat
#> 451                            Vilamacolum Principat
#> 452                              Vilamalla Principat
#> 453                           Vilamaniscle Principat
#> 454                               Vilanant Principat
#> 455                                 Vilaür Principat
#> 456                             Avinyó Nou Principat
#> 457                              la Gornal Principat
#> 458                               la Múnia Principat
#> 459                     el Pla del Penedès Principat
#> 460                              Font-rubí Principat
#> 461                                 Gelida Principat
#> 462                             la Granada Principat
#> 463                           les Cabanyes Principat
#> 464                   Sant Joan de Mediona Principat
#> 465                 Sant Miquel d'Olèrdola Principat
#> 466                    Olesa de Bonesvalls Principat
#> 467                       Pacs del Penedès Principat
#> 468                                Pontons Principat
#> 469                             Puigdàlber Principat
#> 470                Sant Cugat Sesgarrigues Principat
#> 471                 Sant Llorenç d'Hortons Principat
#> 472                     Sant Martí Sarroca Principat
#> 473              Sant Pere de Riudebitlles Principat
#> 474                 Sant Quintí de Mediona Principat
#> 475                   Sant Sadurní d'Anoia Principat
#> 476                   Santa Fe del Penedès Principat
#> 477           Santa Margarida i els Monjos Principat
#> 478                       Sant Pau d'Ordal Principat
#> 479                                  Lavit Principat
#> 480                      Torrelles de Foix Principat
#> 481                 Vilafranca del Penedès Principat
#> 482                     Vilobí del Penedès Principat
#> 483                                   Alàs Principat
#> 484                               Arsèguel Principat
#> 485                               Bassella Principat
#> 486                                   Cabó Principat
#> 487                               Ansovell Principat
#> 488                          Coll de Nargó Principat
#> 489                                    Bar Principat
#> 490                              Estamariu Principat
#> 491                                 Fígols Principat
#> 492                                Tuixent Principat
#> 493                        la Seu d'Urgell Principat
#> 494                   Sorribes de la Vansa Principat
#> 495                         Noves de Segre Principat
#> 496                               Anserall Principat
#> 497                             Montferrer Principat
#> 498                                 Oliana Principat
#> 499                                Organyà Principat
#> 500                               Peramola Principat
#> 501                    el Pla de Sant Tirs Principat
#> 502                       el Pont de Suert Principat
#> 503                               Barruera Principat
#> 504                               Vilaller Principat
#> 505                              Argençola Principat
#> 506                               Bellprat Principat
#> 507                              Canaletes Principat
#> 508                                  Calaf Principat
#> 509                                Dusfort Principat
#> 510                             Capellades Principat
#> 511                                  Carme Principat
#> 512             Castellfollit de Riubregós Principat
#> 513                             Castellolí Principat
#> 514                                 Copons Principat
#> 515                                el Bruc Principat
#> 516               els Hostalets de Pierola Principat
#> 517                       els Prats de Rei Principat
#> 518                               Igualada Principat
#> 519                                  Jorba Principat
#> 520                             la Llacuna Principat
#> 521                  la Pobla de Claramunt Principat
#> 522                  la Torre de Claramunt Principat
#> 523                               Masquefa Principat
#> 524                              Montmaneu Principat
#> 525                                  Òdena Principat
#> 526                                   Orpí Principat
#> 527                                  Piera Principat
#> 528                                 Pujalt Principat
#> 529                                  Rubió Principat
#> 530                     Sant Martí de Tous Principat
#> 531                 Sant Martí Sesgueioles Principat
#> 532                  Sant Pere Sallavinera Principat
#> 533             Santa Margarida de Montbui Principat
#> 534                Santa Maria de Miralles Principat
#> 535                       Vallbona d'Anoia Principat
#> 536                                Veciana Principat
#> 537                      Vilanova del Camí Principat
#> 538                     Aguilar de Segarra Principat
#> 539                                  Artés Principat
#> 540                                 Avinyó Principat
#> 541                              Balsareny Principat
#> 542                                 Callús Principat
#> 543                                Cardona Principat
#> 544                              el Borràs Principat
#> 545                 Castellfollit del Boix Principat
#> 546                            Castellgalí Principat
#> 547                    Castellnou de Bages Principat
#> 548                    el Pont de Vilomara Principat
#> 549                              Fonollosa Principat
#> 550                                   Gaià Principat
#> 551                                Manresa Principat
#> 552                              Marganell Principat
#> 553                Monistrol de Montserrat Principat
#> 554                                   Mura Principat
#> 555                              Navarcles Principat
#> 556                                 Navars Principat
#> 557                               Rajadell Principat
#> 558                                Sallent Principat
#> 559                    Sant Feliu Sasserra Principat
#> 560                  Sant Fruitós de Bages Principat
#> 561               Sant Joan de Vilatorrada Principat
#> 562                    Sant Mateu de Bages Principat
#> 563             Sant Salvador de Guardiola Principat
#> 564               Sant Vicenç de Castellet Principat
#> 565                              Santpedor Principat
#> 566                                  Súria Principat
#> 567                              Talamanca Principat
#> 568                                Alforja Principat
#> 569                               Almoster Principat
#> 570                                 Arbolí Principat
#> 571                               Botarell Principat
#> 572                               Cambrils Principat
#> 573                              Capafonts Principat
#> 574                   Castellvell del Camp Principat
#> 575                              Colldejou Principat
#> 576                             Duesaigües Principat
#> 577                               l'Albiol Principat
#> 578                              l'Aleixar Principat
#> 579                            l'Argentera Principat
#> 580                               la Febró Principat
#> 581                      la Selva del Camp Principat
#> 582                    les Borges del Camp Principat
#> 583                              Maspujols Principat
#> 584                     Mont-roig del Camp Principat
#> 585                      Montbrió del Camp Principat
#> 586                                 Prades Principat
#> 587                                Pratdip Principat
#> 588                                   Reus Principat
#> 589                            Riudecanyes Principat
#> 590                              Riudecols Principat
#> 591                                Riudoms Principat
#> 592                              Vandellòs Principat
#> 593                 Vilanova d'Escornalbou Principat
#> 594                              Vilaplana Principat
#> 595                     Vinyols i els Arcs Principat
#> 596                                Aldover Principat
#> 597                       Alfara de Carles Principat
#> 598                             Benifallet Principat
#> 599                               Camarles Principat
#> 600                               Deltebre Principat
#> 601                             el Perelló Principat
#> 602                                l'Aldea Principat
#> 603                       l'Ametlla de Mar Principat
#> 604                              l'Ampolla Principat
#> 605                                  Paüls Principat
#> 606                               Roquetes Principat
#> 607                                Tivenys Principat
#> 608                                Tortosa Principat
#> 609                                  Xerta Principat
#> 610                                 Albons Principat
#> 611                                  Begur Principat
#> 612                    Bellcaire d'Empordà Principat
#> 613                                Calonge Principat
#> 614                           Platja d'Aro Principat
#> 615                               Colomers Principat
#> 616                                  Corçà Principat
#> 617                Sant Sadurní de l'Heura Principat
#> 618                                  Foixà Principat
#> 619                            Fontanilles Principat
#> 620                             Garrigoles Principat
#> 621                                 Gualta Principat
#> 622                                  Jafre Principat
#> 623                    la Bisbal d'Empordà Principat
#> 624                                la Pera Principat
#> 625                   la Tallada d'Empordà Principat
#> 626                               Mont-ras Principat
#> 627                            Palafrugell Principat
#> 628                                Palamós Principat
#> 629                            Palau-sator Principat
#> 630                                   Pals Principat
#> 631                                Parlavà Principat
#> 632                               Regencós Principat
#> 633                                  Rupià Principat
#> 634                  Sant Feliu de Guíxols Principat
#> 635                   Santa Cristina d'Aro Principat
#> 636                          Serra de Daró Principat
#> 637                                Torrent Principat
#> 638                   Torroella de Montgrí Principat
#> 639                                   Ullà Principat
#> 640                              Ullastret Principat
#> 641                              Ultramort Principat
#> 642                          Vall-llobrega Principat
#> 643                                 Verges Principat
#> 644                               Vilopriu Principat
#> 645                              Vulpellac Principat
#> 646                                 Abrera Principat
#> 647                                 Begues Principat
#> 648                          Castelldefels Principat
#> 649                   Castellví de Rosanes Principat
#> 650                               Cervelló Principat
#> 651                               Collbató Principat
#> 652                   Corbera de Llobregat Principat
#> 653                  Cornellà de Llobregat Principat
#> 654                              el Papiol Principat
#> 655                   el Prat de Llobregat Principat
#> 656                           Esparreguera Principat
#> 657                 Esplugues de Llobregat Principat
#> 658                                   Gavà Principat
#> 659                   la Palma de Cervelló Principat
#> 660                              Martorell Principat
#> 661                          Molins de Rei Principat
#> 662                    Olesa de Montserrat Principat
#> 663                                Pallejà Principat
#> 664                Sant Andreu de la Barca Principat
#> 665                  Sant Boi de Llobregat Principat
#> 666              Sant Climent de Llobregat Principat
#> 667                 Sant Esteve Sesrovires Principat
#> 668                Sant Feliu de Llobregat Principat
#> 669                        Sant Joan Despí Principat
#> 670                      Sant Just Desvern Principat
#> 671                 Sant Vicenç dels Horts Principat
#> 672               Santa Coloma de Cervelló Principat
#> 673                 Torrelles de Llobregat Principat
#> 674                              Vallirana Principat
#> 675                             Viladecans Principat
#> 676                              Albinyana Principat
#> 677                   Banyeres del Penedès Principat
#> 678                                Bellvei Principat
#> 679                               Bonastre Principat
#> 680                               Calafell Principat
#> 681                                  Cunit Principat
#> 682                la Joncosa del Montmell Principat
#> 683                            el Vendrell Principat
#> 684                                l'Arboç Principat
#> 685                  La Bisbal del Penedès Principat
#> 686                    Llorenç del Penedès Principat
#> 687                             Masllorenç Principat
#> 688                Sant Jaume dels Domenys Principat
#> 689                            Santa Oliva Principat
#> 690                               Badalona Principat
#> 691                              Barcelona Principat
#> 692              l'Hospitalet de Llobregat Principat
#> 693                    Sant Adrià de Besòs Principat
#> 694               Santa Coloma de Gramenet Principat
#> 695                                   Avià Principat
#> 696                                   Bagà Principat
#> 697                                  Berga Principat
#> 698                                Borredà Principat
#> 699                                Capolat Principat
#> 700                              Casserres Principat
#> 701                     Castell de l'Areny Principat
#> 702                     Castellar de n'Hug Principat
#> 703                                Llinars Principat
#> 704                                  Cercs Principat
#> 705                                 Fígols Principat
#> 706                              Gironella Principat
#> 707                             Gisclareny Principat
#> 708                                  Gósol Principat
#> 709                  Guardiola de Berguedà Principat
#> 710                            l'Espunyola Principat
#> 711                     la Nou de Berguedà Principat
#> 712                     la Pobla de Lillet Principat
#> 713                                la Quar Principat
#> 714                               Montclar Principat
#> 715                              Montmajor Principat
#> 716                                  Olvan Principat
#> 717                              Puig-reig Principat
#> 718                                  Sagàs Principat
#> 719                                 Saldes Principat
#> 720                Sant Jaume de Frontanyà Principat
#> 721               Sant Julià de Cerdanyola Principat
#> 722                  Santa Maria de Merlès Principat
#> 723                              Vallcebre Principat
#> 724                                 Vilada Principat
#> 725                              Serrateix Principat
#> 726                                    Alp Principat
#> 727                    Bellver de Cerdanya Principat
#> 728                                 Bolvir Principat
#> 729                                    Das Principat
#> 730                        el Vilar d'Urtx Principat
#> 731                                    Ger Principat
#> 732                      Guils de Cerdanya Principat
#> 733                                    All Principat
#> 734                       Lles de Cerdanya Principat
#> 735                                 Llívia Principat
#> 736                               Meranges Principat
#> 737                               Martinet Principat
#> 738                                  Prats Principat
#> 739                               Prullans Principat
#> 740                              Puigcerdà Principat
#> 741                        Riu de Cerdanya Principat
#> 742                                   Urús Principat
#> 743                    Barberà de la Conca Principat
#> 744                             Blancafort Principat
#> 745                                 Conesa Principat
#> 746                                  Forès Principat
#> 747                  l'Espluga de Francolí Principat
#> 748                              les Piles Principat
#> 749                                 Llorac Principat
#> 750                              Montblanc Principat
#> 751                              Passanant Principat
#> 752                                   Pira Principat
#> 753                                Pontils Principat
#> 754                    Rocafort de Queralt Principat
#> 755                Santa Coloma de Queralt Principat
#> 756                                 Sarral Principat
#> 757                     Savallà del Comtat Principat
#> 758                                  Senan Principat
#> 759                              Solivella Principat
#> 760                              Vallclara Principat
#> 761                  Vallfogona de Riucorb Principat
#> 762                     Vilanova de Prades Principat
#> 763                               Vilaverd Principat
#> 764                                Vimbodí Principat
#> 765                              Canyelles Principat
#> 766                               Cubelles Principat
#> 767                               Olivella Principat
#> 768                     Sant Pere de Ribes Principat
#> 769                                 Sitges Principat
#> 770                   Vilanova i la Geltrú Principat
#> 771                                 Arbeca Principat
#> 772                            Bellaguarda Principat
#> 773                                 Bovera Principat
#> 774                            Castelldans Principat
#> 775                Cervià de les Garrigues Principat
#> 776                               el Cogul Principat
#> 777                             el Soleràs Principat
#> 778                            el Vilosell Principat
#> 779                           els Omellons Principat
#> 780                              els Torms Principat
#> 781                                Fulleda Principat
#> 782              Granyena de les Garrigues Principat
#> 783                                Juncosa Principat
#> 784                                 Juneda Principat
#> 785                              l'Albagés Principat
#> 786                                 l'Albi Principat
#> 787                        l'Espluga Calba Principat
#> 788                            la Floresta Principat
#> 789                          la Granadella Principat
#> 790                   la Pobla de Cérvoles Principat
#> 791                    les Borges Blanques Principat
#> 792                               Puiggròs Principat
#> 793                                 Tarrés Principat
#> 794                                Vinaixa Principat
#> 795                             Argelaguer Principat
#> 796                                 Besalú Principat
#> 797                                  Beuda Principat
#> 798               Castellfollit de la Roca Principat
#> 799                   Sant Esteve d'en Bas Principat
#> 800                  l'Hostalnou de Bianya Principat
#> 801                  les Planes d'Hostoles Principat
#> 802                             les Preses Principat
#> 803                        Maià de Montcal Principat
#> 804                                 Mieres Principat
#> 805                               Montagut Principat
#> 806                                   Olot Principat
#> 807                               Riudaura Principat
#> 808                       Sales de Llierca Principat
#> 809                 Sant Esteve de Llémena Principat
#> 810                Sant Feliu de Pallerols Principat
#> 811                                 Juïnyà Principat
#> 812                  Sant Jaume de Llierca Principat
#> 813                    Sant Joan les Fonts Principat
#> 814                              Santa Pau Principat
#> 815                               Tortellà Principat
#> 816                              Aiguaviva Principat
#> 817                                Bescanó Principat
#> 818                                Bordils Principat
#> 819                              Campllong Principat
#> 820                           Canet d'Adri Principat
#> 821                      Cassà de la Selva Principat
#> 822                                  Celrà Principat
#> 823                          Cervià de Ter Principat
#> 824                                  Flaçà Principat
#> 825                   Fornells de la Selva Principat
#> 826                                 Girona Principat
#> 827                                   Juià Principat
#> 828                             Llagostera Principat
#> 829                             Llambilles Principat
#> 830                             Madremanya Principat
#> 831                                Medinyà Principat
#> 832                                  Quart Principat
#> 833                                   Salt Principat
#> 834                      Sant Andreu Salou Principat
#> 835                           Sant Gregori Principat
#> 836                    Sant Joan de Mollet Principat
#> 837                    Sant Jordi Desvalls Principat
#> 838                    Sant Julià de Ramis Principat
#> 839                  Sant Martí de Llémena Principat
#> 840                        Sant Martí Vell Principat
#> 841                          Sarrià de Ter Principat
#> 842                            Vilablareix Principat
#> 843                             Viladasens Principat
#> 844                                 Alpens Principat
#> 845            Santa Eulàlia de Puig-oriol Principat
#> 846                                  Olost Principat
#> 847                                 Oristà Principat
#> 848                               Perafita Principat
#> 849                      Prats de Lluçanès Principat
#> 850                    Sant Martí d'Albars Principat
#> 851                              Sobremunt Principat
#> 852                                 Alella Principat
#> 853                          Arenys de Mar Principat
#> 854                         Arenys de Munt Principat
#> 855                              Argentona Principat
#> 856                         Cabrera de Mar Principat
#> 857                                Cabrils Principat
#> 858                        Caldes d'Estrac Principat
#> 859                                Calella Principat
#> 860                           Canet de Mar Principat
#> 861                                Dosrius Principat
#> 862                              el Masnou Principat
#> 863                         Malgrat de Mar Principat
#> 864                                 Mataró Principat
#> 865                                Montgat Principat
#> 866                                 Òrrius Principat
#> 867                              Palafolls Principat
#> 868                          Pineda de Mar Principat
#> 869                         Premià de Dalt Principat
#> 870                          Premià de Mar Principat
#> 871              Sant Andreu de Llavaneres Principat
#> 872                Sant Cebrià de Vallalta Principat
#> 873                 Sant Iscle de Vallalta Principat
#> 874                        Sant Pol de Mar Principat
#> 875                 Sant Vicenç de Montalt Principat
#> 876                          Santa Susanna Principat
#> 877                                   Teià Principat
#> 878                                  Tiana Principat
#> 879                                Tordera Principat
#> 880                       Vilassar de Dalt Principat
#> 881                        Vilassar de Mar Principat
#> 882                                Calders Principat
#> 883                             Castellcir Principat
#> 884                          Castellterçol Principat
#> 885                            Collsuspina Principat
#> 886                                Granera Principat
#> 887                               l'Estany Principat
#> 888                                   Moià Principat
#> 889                   Monistrol de Calders Principat
#> 890                     Sant Quirze Safaja Principat
#> 891                      Santa Maria d'Oló Principat
#> 892                                Alcanar Principat
#> 893                                Amposta Principat
#> 894                              Freginals Principat
#> 895                                 Godall Principat
#> 896                              la Galera Principat
#> 897                              la Ràpita Principat
#> 898                               la Sénia Principat
#> 899                       Mas de Barberans Principat
#> 900                            Masdenverge Principat
#> 901                    Sant Jaume d'Enveja Principat
#> 902                          Santa Bàrbara Principat
#> 903                              Ulldecona Principat
#> 904                                   Àger Principat
#> 905                                 Albesa Principat
#> 906                                Algerri Principat
#> 907                       Alòs de Balaguer Principat
#> 908                        Artesa de Segre Principat
#> 909                               Balaguer Principat
#> 910                     Bellcaire d'Urgell Principat
#> 911                      Bellmunt d'Urgell Principat
#> 912                             Cabanabona Principat
#> 913                               Camarasa Principat
#> 914                   Castelló de Farfanya Principat
#> 915                                Cubells Principat
#> 916                               Foradada Principat
#> 917                       Ivars de Noguera Principat
#> 918                                Gualter Principat
#> 919                       la Sentiu de Sió Principat
#> 920                          les Avellanes Principat
#> 921                             Menàrguens Principat
#> 922                                Montgai Principat
#> 923                                 Oliola Principat
#> 924                         Os de Balaguer Principat
#> 925                               Penelles Principat
#> 926                                  Ponts Principat
#> 927                               Preixens Principat
#> 928                                Térmens Principat
#> 929                                Tiurana Principat
#> 930                             Torrelameu Principat
#> 931                 Vallfogona de Balaguer Principat
#> 932                    Vilanova de l'Aguda Principat
#> 933                       Vilanova de Meià Principat
#> 934               els Hostalets de Balenyà Principat
#> 935                            Calldetenes Principat
#> 936                              Centelles Principat
#> 937                               el Brull Principat
#> 938                             Espinelves Principat
#> 939                            Folgueroles Principat
#> 940                                   Gurb Principat
#> 941                             l'Esquirol Principat
#> 942                     les Masies de Roda Principat
#> 943                 les Masies de Voltregà Principat
#> 944                                  Malla Principat
#> 945                                Manlleu Principat
#> 946                             Montesquiu Principat
#> 947                             Muntanyola Principat
#> 948                           Can Branques Principat
#> 949                            Roda de Ter Principat
#> 950                                  Rupit Principat
#> 951                                 l'Alou Principat
#> 952                 Sant Bartomeu del Grau Principat
#> 953                   Sant Boi de Lluçanès Principat
#> 954               Sant Hipòlit de Voltregà Principat
#> 955                Sant Julià de Vilatorta Principat
#> 956                               l'Abella Principat
#> 957                   Sant Pere de Torelló Principat
#> 958                  Sant Quirze de Besora Principat
#> 959                Sant Sadurní d'Osormort Principat
#> 960                 Sant Vicenç de Torelló Principat
#> 961              Santa Cecília de Voltregà Principat
#> 962                 Santa Eugènia de Berga Principat
#> 963             Santa Eulàlia de Riuprimer Principat
#> 964                  Santa Maria de Besora Principat
#> 965                                   Seva Principat
#> 966                                   Sora Principat
#> 967                               Taradell Principat
#> 968                             Tavèrnoles Principat
#> 969                               Tavertet Principat
#> 970                                   Tona Principat
#> 971                                Torelló Principat
#> 972                                    Vic Principat
#> 973                                  Vidrà Principat
#> 974                               Viladrau Principat
#> 975                        Vilanova de Sau Principat
#> 976                     Abella de la Conca Principat
#> 977                     Guàrdia de Noguera Principat
#> 978                    el Pont de Claverol Principat
#> 979                      Gavet de la Conca Principat
#> 980                                  Isona Principat
#> 981                      la Pobla de Segur Principat
#> 982                   la Torre de Cabdella Principat
#> 983                               Llimiana Principat
#> 984                       Salàs de Pallars Principat
#> 985                Sant Esteve de la Sarga Principat
#> 986                     Sarroca de Bellera Principat
#> 987                              Senterada Principat
#> 988                                 Talarn Principat
#> 989                                  Tremp Principat
#> 990                                  Alins Principat
#> 991                        València d'Àneu Principat
#> 992                        Gerri de la Sal Principat
#> 993                                  Espot Principat
#> 994                         Esterri d'Àneu Principat
#> 995                      Esterri de Cardós Principat
#> 996                                   Burg Principat
#> 997                    la Guingueta d'Àneu Principat
#> 998                               Lladorre Principat
#> 999                               Llavorsí Principat
#> 1000                                 Rialb Principat
#> 1001                               Vilamur Principat
#> 1002                                  Sort Principat
#> 1003                                Tírvia Principat
#> 1004                      Ribera de Cardós Principat
#> 1005                               Barbens Principat
#> 1006                    Bell-lloc d'Urgell Principat
#> 1007                               Bellvís Principat
#> 1008                   Castellnou de Seana Principat
#> 1009                  el Palau d'Anglesola Principat
#> 1010                               el Poal Principat
#> 1011                            Fondarella Principat
#> 1012                                Golmés Principat
#> 1013                        Ivars d'Urgell Principat
#> 1014                               Linyola Principat
#> 1015                             Miralcamp Principat
#> 1016                            Mollerussa Principat
#> 1017                               Sidamon Principat
#> 1018                           Torregrossa Principat
#> 1019                             Vila-sana Principat
#> 1020                  Vilanova de Bellpuig Principat
#> 1021                              Banyoles Principat
#> 1022                                 Camós Principat
#> 1023                    Cornellà del Terri Principat
#> 1024                               Crespià Principat
#> 1025                             Esponellà Principat
#> 1026                           Fontcoberta Principat
#> 1027                     Palol de Revardit Principat
#> 1028                                  Mata Principat
#> 1029              Sant Miquel de Campmajor Principat
#> 1030                               Serinyà Principat
#> 1031                            Vilademuls Principat
#> 1032                  Bellmunt del Priorat Principat
#> 1033                             Cabassers Principat
#> 1034                              Capçanes Principat
#> 1035                Cornudella de Montsant Principat
#> 1036                              el Lloar Principat
#> 1037                            el Masroig Principat
#> 1038                              el Molar Principat
#> 1039                          els Guiamets Principat
#> 1040                                Falset Principat
#> 1041                            Gratallops Principat
#> 1042                 la Bisbal de Montsant Principat
#> 1043                            la Figuera Principat
#> 1044                 la Morera de Montsant Principat
#> 1045               la Torre de Fontaubella Principat
#> 1046                       la Vilella Alta Principat
#> 1047                      la Vilella Baixa Principat
#> 1048                                 Marçà Principat
#> 1049                              Margalef Principat
#> 1050                              Poboleda Principat
#> 1051                               Porrera Principat
#> 1052                 Pradell de la Teixeta Principat
#> 1053                   Torroja del Priorat Principat
#> 1054                           Ulldemolins Principat
#> 1055                                  Ascó Principat
#> 1056                            Benissanet Principat
#> 1057                                  Flix Principat
#> 1058                                Garcia Principat
#> 1059                              Ginestar Principat
#> 1060                       la Palma d'Ebre Principat
#> 1061                la Torre de l'Espanyol Principat
#> 1062                               Miravet Principat
#> 1063                           Móra d'Ebre Principat
#> 1064                          Móra la Nova Principat
#> 1065                              Rasquera Principat
#> 1066                      Riba-roja d'Ebre Principat
#> 1067                               Tivissa Principat
#> 1068                               Vinebre Principat
#> 1069                           Campdevànol Principat
#> 1070                             Campelles Principat
#> 1071                             Camprodon Principat
#> 1072                               Gombrèn Principat
#> 1073                           les Llosses Principat
#> 1074                               Llanars Principat
#> 1075                                 Molló Principat
#> 1076                                Ogassa Principat
#> 1077                              Pardines Principat
#> 1078                              Planoles Principat
#> 1079                              Queralbs Principat
#> 1080                       Ribes de Freser Principat
#> 1081                                Ripoll Principat
#> 1082            Sant Joan de les Abadesses Principat
#> 1083                  Sant Pau de Segúries Principat
#> 1084                              Setcases Principat
#> 1085                                 Toses Principat
#> 1086                Vallfogona de Ripollès Principat
#> 1087                     Vilallonga de Ter Principat
#> 1088                                Biosca Principat
#> 1089                               Cervera Principat
#> 1090                        les Pallargues Principat
#> 1091                               Estaràs Principat
#> 1092                           Granyanella Principat
#> 1093                   Granyena de Segarra Principat
#> 1094                              Guissona Principat
#> 1095                                Ivorra Principat
#> 1096                            les Oluges Principat
#> 1097                            Massoteres Principat
#> 1098                   Montoliu de Segarra Principat
#> 1099                  Montornès de Segarra Principat
#> 1100                Sant Antolí i Vilanova Principat
#> 1101                               Sanaüja Principat
#> 1102                Sant Guim de Freixenet Principat
#> 1103                 Sant Guim de la Plana Principat
#> 1104                            Sant Ramon Principat
#> 1105                              Talavera Principat
#> 1106                    Tarroja de Segarra Principat
#> 1107                                  Torà Principat
#> 1108                             Torrefeta Principat
#> 1109                                Aitona Principat
#> 1110                            Albatàrrec Principat
#> 1111                                Alcanó Principat
#> 1112                              Alcarràs Principat
#> 1113                             Alcoletge Principat
#> 1114                              Alfarràs Principat
#> 1115                                 Alfés Principat
#> 1116                              Alguaire Principat
#> 1117                            Almacelles Principat
#> 1118                              Almatret Principat
#> 1119                               Almenar Principat
#> 1120                               Alpicat Principat
#> 1121                      Artesa de Lleida Principat
#> 1122                                  Aspa Principat
#> 1123                    Benavent de Segrià Principat
#> 1124                               Corbins Principat
#> 1125                            els Alamús Principat
#> 1126                             Gimenells Principat
#> 1127                    la Granja d'Escarp Principat
#> 1128                           la Portella Principat
#> 1129                            Llardecans Principat
#> 1130                                Lleida Principat
#> 1131                                Maials Principat
#> 1132                          Massalcoreig Principat
#> 1133                    Montoliu de Lleida Principat
#> 1134                    Puigverd de Lleida Principat
#> 1135                              Rosselló Principat
#> 1136                     Sarroca de Lleida Principat
#> 1137                                 Seròs Principat
#> 1138                                 Soses Principat
#> 1139                              Sudanell Principat
#> 1140                                Sunyer Principat
#> 1141                          Torre-serona Principat
#> 1142                           Torrebesses Principat
#> 1143                          Torrefarrera Principat
#> 1144                       Torres de Segre Principat
#> 1145                  Vilanova de la Barca Principat
#> 1146                    Vilanova de Segrià Principat
#> 1147                                  Amer Principat
#> 1148                                Anglès Principat
#> 1149                              Arbúcies Principat
#> 1150                                Blanes Principat
#> 1151                                 Breda Principat
#> 1152                              Brunyola Principat
#> 1153                   Caldes de Malavella Principat
#> 1154                    Fogars de la Selva Principat
#> 1155                             Hostalric Principat
#> 1156                     la Cellera de Ter Principat
#> 1157                         Lloret de Mar Principat
#> 1158                               Maçanes Principat
#> 1159                   Maçanet de la Selva Principat
#> 1160                                  Osor Principat
#> 1161                                Riells Principat
#> 1162                            Riudarenes Principat
#> 1163                Riudellots de la Selva Principat
#> 1164               Sant Feliu de Buixalleu Principat
#> 1165                    Sant Hilari Sacalm Principat
#> 1166                               Bonmatí Principat
#> 1167               Santa Coloma de Farners Principat
#> 1168                                  Sils Principat
#> 1169                     Sant Martí Sacalm Principat
#> 1170                          Tossa de Mar Principat
#> 1171                              Vidreres Principat
#> 1172                        Vilobí d'Onyar Principat
#> 1173                Castellar de la Ribera Principat
#> 1174                  Clariana de Cardener Principat
#> 1175                 la Casa Nova de Valls Principat
#> 1176                               la Coma Principat
#> 1177                            la Molsosa Principat
#> 1178                               Lladurs Principat
#> 1179                               Llobera Principat
#> 1180                                 Navès Principat
#> 1181                              Cambrils Principat
#> 1182                    el Pi de Sant Just Principat
#> 1183                          Sant Climenç Principat
#> 1184                                 Pinós Principat
#> 1185                            el Miracle Principat
#> 1186               Sant Llorenç de Morunys Principat
#> 1187                               Solsona Principat
#> 1188                             Altafulla Principat
#> 1189                             Constantí Principat
#> 1190                              Creixell Principat
#> 1191                            el Catllar Principat
#> 1192                             el Morell Principat
#> 1193                        els Pallaresos Principat
#> 1194                            la Canonja Principat
#> 1195                        la Nou de Gaià Principat
#> 1196                   la Pobla de Mafumet Principat
#> 1197                 la Pobla de Montornès Principat
#> 1198                      la Riera de Gaià Principat
#> 1199                            la Secuita Principat
#> 1200                              Perafort Principat
#> 1201                                 Renau Principat
#> 1202                          Roda de Berà Principat
#> 1203                                Salomó Principat
#> 1204                                 Salou Principat
#> 1205                             Tarragona Principat
#> 1206                         Torredembarra Principat
#> 1207                      Vespella de Gaià Principat
#> 1208                             Vila-seca Principat
#> 1209                   Vilallonga del Camp Principat
#> 1210                                 Arnes Principat
#> 1211                                 Batea Principat
#> 1212                                   Bot Principat
#> 1213                               Caseres Principat
#> 1214                        Corbera d'Ebre Principat
#> 1215                     el Pinell de Brai Principat
#> 1216                               Gandesa Principat
#> 1217                    Horta de Sant Joan Principat
#> 1218                          la Fatarella Principat
#> 1219                 la Pobla de Massaluca Principat
#> 1220                         Prat de Comte Principat
#> 1221                     Vilalba dels Arcs Principat
#> 1222                              Agramunt Principat
#> 1223                             Anglesola Principat
#> 1224                              Belianes Principat
#> 1225                              Bellpuig Principat
#> 1226                           Castellserà Principat
#> 1227                            Ciutadilla Principat
#> 1228                 els Omells de na Gaia Principat
#> 1229                               Guimerà Principat
#> 1230                            la Fuliola Principat
#> 1231                                 Maldà Principat
#> 1232                                 Nalec Principat
#> 1233                           Ossó de Sió Principat
#> 1234                              Preixana Principat
#> 1235                   Puigverd d'Agramunt Principat
#> 1236                   Sant Martí de Maldà Principat
#> 1237                               Tàrrega Principat
#> 1238                             Tornabous Principat
#> 1239                Vallbona de les Monges Principat
#> 1240                                 Verdú Principat
#> 1241                            Vilagrassa Principat
#> 1242                      Badia del Vallès Principat
#> 1243                    Barberà del Vallès Principat
#> 1244                  Castellar del Vallès Principat
#> 1245                         Castellbisbal Principat
#> 1246                 Cerdanyola del Vallès Principat
#> 1247                               Gallifa Principat
#> 1248                            Matadepera Principat
#> 1249                     Montcada i Reixac Principat
#> 1250              Palau-solità i Plegamans Principat
#> 1251                               Polinyà Principat
#> 1252                             Rellinars Principat
#> 1253                              Ripollet Principat
#> 1254                                  Rubí Principat
#> 1255                              Sabadell Principat
#> 1256                 Sant Cugat del Vallès Principat
#> 1257                   Sant Llorenç Savall Principat
#> 1258                Sant Quirze del Vallès Principat
#> 1259              Santa Perpètua de Mogoda Principat
#> 1260                             Sentmenat Principat
#> 1261                              Terrassa Principat
#> 1262                            Ullastrell Principat
#> 1263                            Vacarisses Principat
#> 1264                         Viladecavalls Principat
#> 1265                            Aiguafreda Principat
#> 1266                                Bigues Principat
#> 1267                     Caldes de Montbui Principat
#> 1268                               Campins Principat
#> 1269                         Barriada Nova Principat
#> 1270                               Cànoves Principat
#> 1271                              Cardedeu Principat
#> 1272                            el Figueró Principat
#> 1273                           Mosqueroles Principat
#> 1274                            Granollers Principat
#> 1275                                Gualba Principat
#> 1276                  l'Ametlla del Vallès Principat
#> 1277                            la Garriga Principat
#> 1278                           la Llagosta Principat
#> 1279                    la Roca del Vallès Principat
#> 1280                         Corró d'Avall Principat
#> 1281                         Lliçà d'Amunt Principat
#> 1282                         Lliçà de Vall Principat
#> 1283                    Llinars del Vallès Principat
#> 1284                           Martorelles Principat
#> 1285                     Mollet del Vallès Principat
#> 1286                              Montmeló Principat
#> 1287                  Montornès del Vallès Principat
#> 1288                              Montseny Principat
#> 1289                     Parets del Vallès Principat
#> 1290              Sant Antoni de Vilamajor Principat
#> 1291                           Sant Celoni Principat
#> 1292           Sant Esteve de Palautordera Principat
#> 1293                 Sant Feliu de Codines Principat
#> 1294            Sant Fost de Campsentelles Principat
#> 1295                Sant Pere de Vilamajor Principat
#> 1296                            la Sagrera Principat
#> 1297            Santa Maria de Martorelles Principat
#> 1298           Santa Maria de Palautordera Principat
#> 1299                            Tagamanent Principat
#> 1300                          Vallgorguina Principat
#> 1301                           Vallromanes Principat
#> 1302                      Vilalba Sasserra Principat
#> 1303                   Vilanova del Vallès Principat
#> 1304                              València        PV
#> 1305                      Alcalà de Xivert        PV
#> 1306                             Benicarló        PV
#> 1307                                 Càlig        PV
#> 1308                         Canet lo Roig        PV
#> 1309                     Castell de Cabres        PV
#> 1310                  Cervera del Maestrat        PV
#> 1311                               la Jana        PV
#> 1312                 la Pobla de Benifassà        PV
#> 1313                         la Salzadella        PV
#> 1314                             Peníscola        PV
#> 1315                               Rossell        PV
#> 1316                            Sant Jordi        PV
#> 1317                            Sant Mateu        PV
#> 1318                    Sant Rafel del Riu        PV
#> 1319             Santa Magdalena de Polpís        PV
#> 1320                             Traiguera        PV
#> 1321                               Vinaròs        PV
#> 1322                                  Xert        PV
#> 1323                  Guardamar del Segura        PV
#> 1324                            Crevillent        PV
#> 1325                                   Elx        PV
#> 1326                            Santa Pola        PV
#> 1327                Albalat dels Tarongers        PV
#> 1328                  Alfara de la Baronia        PV
#> 1329                     Algar de Palància        PV
#> 1330                      Algímia d'Alfara        PV
#> 1331                             Benavites        PV
#> 1332                Benifairó de les Valls        PV
#> 1333                  Canet d'en Berenguer        PV
#> 1334                             Estivella        PV
#> 1335                                 Faura        PV
#> 1336                                 Gilet        PV
#> 1337                                Petrés        PV
#> 1338                    Quart de les Valls        PV
#> 1339                              Quartell        PV
#> 1340                                Sagunt        PV
#> 1341                                Segart        PV
#> 1342                         Torres Torres        PV
#> 1343                            Benaguasil        PV
#> 1344                             Benissanó        PV
#> 1345                                Bétera        PV
#> 1346                               Casinos        PV
#> 1347                              l'Eliana        PV
#> 1348                  la Pobla de Vallbona        PV
#> 1349                                Llíria        PV
#> 1350                               Nàquera        PV
#> 1351                                Olocau        PV
#> 1352                    Riba-roja de Túria        PV
#> 1353                                 Serra        PV
#> 1354                           Vilamarxant        PV
#> 1355                                 Agres        PV
#> 1356                              Alcoleja        PV
#> 1357                              Alcosser        PV
#> 1358                              Alfafara        PV
#> 1359                             Almudaina        PV
#> 1360                               Balones        PV
#> 1361                               Benasau        PV
#> 1362                             Beniarrés        PV
#> 1363                             Benilloba        PV
#> 1364                              Benillup        PV
#> 1365                           Benimarfull        PV
#> 1366                            Benimassot        PV
#> 1367                            Cocentaina        PV
#> 1368                                Fageca        PV
#> 1369                               Famorca        PV
#> 1370                               Gaianes        PV
#> 1371                                 Gorga        PV
#> 1372                    l'Alqueria d'Asnar        PV
#> 1373                                l'Orxa        PV
#> 1374                               Millena        PV
#> 1375                          Muro d'Alcoi        PV
#> 1376                                Planes        PV
#> 1377                         Quatretondeta        PV
#> 1378                                Tollos        PV
#> 1379                  el Fondó de les Neus        PV
#> 1380                  el Fondó dels Frares        PV
#> 1381                              el Pinós        PV
#> 1382                            l'Alguenya        PV
#> 1383                             la Romana        PV
#> 1384                               Monòver        PV
#> 1385                               Novelda        PV
#> 1386                                Petrer        PV
#> 1387                           Castellfort        PV
#> 1388                            Cinctorres        PV
#> 1389                            el Forcall        PV
#> 1390                               Herbers        PV
#> 1391                    la Mata de Morella        PV
#> 1392                          la Todolella        PV
#> 1393                               Morella        PV
#> 1394                             Palanques        PV
#> 1395                    Portell de Morella        PV
#> 1396                                Sorita        PV
#> 1397                             Vallibona        PV
#> 1398                            Vilafranca        PV
#> 1399                              Villores        PV
#> 1400                                 Agost        PV
#> 1401                                Aigües        PV
#> 1402                               Alacant        PV
#> 1403                                 Busot        PV
#> 1404                           el Campello        PV
#> 1405               la Torre de les Maçanes        PV
#> 1406                              Mutxamel        PV
#> 1407                   Sant Joan d'Alacant        PV
#> 1408               Sant Vicent del Raspeig        PV
#> 1409                                Xixona        PV
#> 1410                                Costur        PV
#> 1411                            Figueroles        PV
#> 1412                              l'Alcora        PV
#> 1413                            les Useres        PV
#> 1414                               Llucena        PV
#> 1415               Vistabella del Maestrat        PV
#> 1416                                 Xodos        PV
#> 1417                                 Alcoi        PV
#> 1418                   Banyeres de Mariola        PV
#> 1419                            Benifallim        PV
#> 1420                              Castalla        PV
#> 1421                                   Ibi        PV
#> 1422                                  Onil        PV
#> 1423                             Penàguila        PV
#> 1424                                  Tibi        PV
#> 1425                            Albocàsser        PV
#> 1426                     Ares del Maestrat        PV
#> 1427                 Atzeneta del Maestrat        PV
#> 1428                             Benafigos        PV
#> 1429                              Benassal        PV
#> 1430                                  Catí        PV
#> 1431                                 Culla        PV
#> 1432                         la Serratella        PV
#> 1433                  la Torre d'en Besora        PV
#> 1434                                 Tírig        PV
#> 1435                        Vilar de Canes        PV
#> 1436                             Beneixama        PV
#> 1437                                  Biar        PV
#> 1438                      el Camp de Mirra        PV
#> 1439                            la Canyada        PV
#> 1440                  Albalat dels Sorells        PV
#> 1441                              Alboraia        PV
#> 1442                              Albuixec        PV
#> 1443                  Alfara del Patriarca        PV
#> 1444                             Almàssera        PV
#> 1445                  Bonrepòs i Mirambell        PV
#> 1446                             Burjassot        PV
#> 1447                el Puig de Santa Maria        PV
#> 1448                             Emperador        PV
#> 1449                                 Foios        PV
#> 1450                               Godella        PV
#> 1451                   la Pobla de Farnals        PV
#> 1452                          Massalfassar        PV
#> 1453                          Massamagrell        PV
#> 1454                               Meliana        PV
#> 1455                              Montcada        PV
#> 1456                               Museros        PV
#> 1457                               Paterna        PV
#> 1458                                 Puçol        PV
#> 1459                           Rafelbunyol        PV
#> 1460                              Rocafort        PV
#> 1461                     Tavernes Blanques        PV
#> 1462                              Vinalesa        PV
#> 1463                               Alaquàs        PV
#> 1464                                 Albal        PV
#> 1465                              Alcàsser        PV
#> 1466                                Aldaia        PV
#> 1467                               Alfafar        PV
#> 1468                            Benetússer        PV
#> 1469                           Beniparrell        PV
#> 1470                             Catarroja        PV
#> 1471                  Llocnou de la Corona        PV
#> 1472                               Manises        PV
#> 1473                            Massanassa        PV
#> 1474                               Mislata        PV
#> 1475                              Paiporta        PV
#> 1476                               Picanya        PV
#> 1477                             Picassent        PV
#> 1478                       Quart de Poblet        PV
#> 1479                                Sedaví        PV
#> 1480                                 Silla        PV
#> 1481                               Torrent        PV
#> 1482                             Xirivella        PV
#> 1483                               Barxeta        PV
#> 1484                                Canals        PV
#> 1485                                 Cerdà        PV
#> 1486                            el Genovés        PV
#> 1487                              Estubeny        PV
#> 1488                 l'Alcúdia de Crespins        PV
#> 1489                 la Font de la Figuera        PV
#> 1490               la Granja de la Costera        PV
#> 1491                     la Llosa de Ranes        PV
#> 1492                      Llanera de Ranes        PV
#> 1493                 Llocnou d'en Fenollet        PV
#> 1494                               Moixent        PV
#> 1495                               Montesa        PV
#> 1496                               Novetlè        PV
#> 1497                      Rotglà i Corberà        PV
#> 1498                              Torrella        PV
#> 1499                               Vallada        PV
#> 1500                                Vallés        PV
#> 1501                                Xàtiva        PV
#> 1502                              Alcalalí        PV
#> 1503                            Beniarbeig        PV
#> 1504                            Benidoleig        PV
#> 1505                            Benigembla        PV
#> 1506                              Benimeli        PV
#> 1507                               Benissa        PV
#> 1508                                  Calp        PV
#> 1509                   Castell de Castells        PV
#> 1510                                 Dénia        PV
#> 1511           el Poble Nou de Benitatxell        PV
#> 1512                    el Ràfol d'Almúnia        PV
#> 1513                             el Verger        PV
#> 1514                           els Poblets        PV
#> 1515                        Gata de Gorgos        PV
#> 1516                             l'Atzúbia        PV
#> 1517                   Alcalà de la Jovada        PV
#> 1518                         la Vall d'Ebo        PV
#> 1519                               Benialí        PV
#> 1520                                 Fleix        PV
#> 1521                                Llíber        PV
#> 1522                                 Murla        PV
#> 1523                                Ondara        PV
#> 1524                                  Orba        PV
#> 1525                               Parcent        PV
#> 1526                             Pedreguer        PV
#> 1527                                  Pego        PV
#> 1528                                 Sagra        PV
#> 1529                   Sanet i els Negrals        PV
#> 1530                                Senija        PV
#> 1531                               Teulada        PV
#> 1532                                Tormos        PV
#> 1533                                 Xàbia        PV
#> 1534                                  Xaló        PV
#> 1535                                 Altea        PV
#> 1536                              Beniardà        PV
#> 1537                              Benidorm        PV
#> 1538                              Benifato        PV
#> 1539                           Benimantell        PV
#> 1540                               Bolulla        PV
#> 1541                   Callosa d'en Sarrià        PV
#> 1542                             Confrides        PV
#> 1543               el Castell de Guadalest        PV
#> 1544                             Finestrat        PV
#> 1545                        l'Alfàs del Pi        PV
#> 1546                              la Nucia        PV
#> 1547                        la Vila Joiosa        PV
#> 1548                                Orxeta        PV
#> 1549                                 Polop        PV
#> 1550                                Relleu        PV
#> 1551                                 Sella        PV
#> 1552                               Tàrbena        PV
#> 1553                             Almassora        PV
#> 1554                            Benicàssim        PV
#> 1555                               Benlloc        PV
#> 1556                               Borriol        PV
#> 1557                               Cabanes        PV
#> 1558                  Castelló de la Plana        PV
#> 1559                      la Pobla Tornesa        PV
#> 1560                la Serra d'en Galceran        PV
#> 1561                 la Torre d'en Doménec        PV
#> 1562                        la Vall d'Alba        PV
#> 1563                  les Coves de Vinromà        PV
#> 1564                                Orpesa        PV
#> 1565                     Sant Joan de Moró        PV
#> 1566                           Torreblanca        PV
#> 1567                             Vilafamés        PV
#> 1568                    Vilanova d'Alcolea        PV
#> 1569                                   Aín        PV
#> 1570                              Almenara        PV
#> 1571                                Artana        PV
#> 1572                                 Betxí        PV
#> 1573                              Borriana        PV
#> 1574                                Eslida        PV
#> 1575                         Alfondeguilla        PV
#> 1576                      l'Alcúdia de Veo        PV
#> 1577                              la Llosa        PV
#> 1578                        la Vall d'Uixó        PV
#> 1579                          la Vilavella        PV
#> 1580                         les Alqueries        PV
#> 1581                               Moncofa        PV
#> 1582                                 Nules        PV
#> 1583                                  Onda        PV
#> 1584                            Ribesalbes        PV
#> 1585                                 Suera        PV
#> 1586                                 Tales        PV
#> 1587                             Vila-real        PV
#> 1588                                Xilxes        PV
#> 1589                               Alberic        PV
#> 1590                   Alcàntera de Xúquer        PV
#> 1591                                Alfarb        PV
#> 1592                              Algemesí        PV
#> 1593                               Alginet        PV
#> 1594                                Alzira        PV
#> 1595                               Antella        PV
#> 1596                             Beneixida        PV
#> 1597                              Benifaió        PV
#> 1598                              Benimodo        PV
#> 1599                            Benimuslem        PV
#> 1600                            Carcaixent        PV
#> 1601                                Càrcer        PV
#> 1602                                Carlet        PV
#> 1603                              Castelló        PV
#> 1604                               Catadau        PV
#> 1605                                 Cotes        PV
#> 1606                               Gavarda        PV
#> 1607                            Guadassuar        PV
#> 1608                             l'Alcúdia        PV
#> 1609                               l'Énova        PV
#> 1610                       la Pobla Llarga        PV
#> 1611                               Llombai        PV
#> 1612                                Manuel        PV
#> 1613                            Massalavés        PV
#> 1614                               Montroi        PV
#> 1615                            Montserrat        PV
#> 1616                           Rafelguaraf        PV
#> 1617                                  Real        PV
#> 1618                           Sant Joanet        PV
#> 1619                               Sellent        PV
#> 1620                               Senyera        PV
#> 1621                            Sumacàrcer        PV
#> 1622                                 Torís        PV
#> 1623                  Albalat de la Ribera        PV
#> 1624                            Almussafes        PV
#> 1625                    Benicull de Xúquer        PV
#> 1626                               Corbera        PV
#> 1627                               Cullera        PV
#> 1628                                Favara        PV
#> 1629                             Fortaleny        PV
#> 1630                                Llaurí        PV
#> 1631                     Polinyà de Xúquer        PV
#> 1632                                 Riola        PV
#> 1633                               Sollana        PV
#> 1634                                 Sueca        PV
#> 1635                                  Ador        PV
#> 1636                               Alfauir        PV
#> 1637                              Almiserà        PV
#> 1638                              Almoines        PV
#> 1639                                  Barx        PV
#> 1640                           Bellreguard        PV
#> 1641                              Beniarjó        PV
#> 1642             Benifairó de la Valldigna        PV
#> 1643                               Beniflà        PV
#> 1644                            Benirredrà        PV
#> 1645           Castellonet de la Conquesta        PV
#> 1646                                Daimús        PV
#> 1647                     el Real de Gandia        PV
#> 1648                                Gandia        PV
#> 1649                 Guardamar de la Safor        PV
#> 1650             l'Alqueria de la Comtessa        PV
#> 1651                   la Font d'en Carròs        PV
#> 1652                Llocnou de Sant Jeroni        PV
#> 1653                               Miramar        PV
#> 1654                                 Oliva        PV
#> 1655                       Palma de Gandia        PV
#> 1656                               Palmera        PV
#> 1657                                 Piles        PV
#> 1658                               Potries        PV
#> 1659                            Rafelcofer        PV
#> 1660                                Ròtova        PV
#> 1661                 Simat de la Valldigna        PV
#> 1662              Tavernes de la Valldigna        PV
#> 1663                            Vilallonga        PV
#> 1664                                Xeraco        PV
#> 1665                                Xeresa        PV
#> 1666                              Agullent        PV
#> 1667                     Aielo de Malferit        PV
#> 1668                        Aielo de Rugat        PV
#> 1669                               Albaida        PV
#> 1670                             Alfarrasí        PV
#> 1671                    Atzeneta d'Albaida        PV
#> 1672                               Bèlgida        PV
#> 1673                                Bellús        PV
#> 1674                             Beniatjar        PV
#> 1675                             Benicolet        PV
#> 1676                             Benigànim        PV
#> 1677                             Benissoda        PV
#> 1678                            Benissuera        PV
#> 1679                             Bocairent        PV
#> 1680                                Bufali        PV
#> 1681                             Carrícola        PV
#> 1682                     Castelló de Rugat        PV
#> 1683                            el Palomar        PV
#> 1684                     el Ràfol de Salem        PV
#> 1685               Fontanars dels Alforins        PV
#> 1686                         Guadasséquies        PV
#> 1687                             l'Olleria        PV
#> 1688                      la Pobla del Duc        PV
#> 1689                              Llutxent        PV
#> 1690                           Montaverner        PV
#> 1691                           Montitxelvo        PV
#> 1692                             Ontinyent        PV
#> 1693                                  Otos        PV
#> 1694                                 Pinet        PV
#> 1695                           Quatretonda        PV
#> 1696                                 Rugat        PV
#> 1697                                 Salem        PV
#> 1698                               Sempere        PV
#> 1699                             Terrateig        PV
#> 1700                              l'Alguer  Sardenya
#>                                         municipi
#> 1                                       Alt Aran
#> 2                                          Arres
#> 3                                         Bausén
#> 4                                        Bossòst
#> 5                                        Canejan
#> 6                                      es Bordes
#> 7                                            Lés
#> 8                              Viella i Mitjaran
#> 9                                        Vilamòs
#> 10         Angostrina i Vilanova de les Escaldes
#> 11                                      Bolquera
#> 12                                        Dorres
#> 13                                         Èguet
#> 14                                          Eina
#> 15                                        Enveig
#> 16                                            Er
#> 17                                       Estavar
#> 18                      Font-romeu, Odelló i Vià
#> 19                             la Guingueta d'Ix
#> 20                              la Tor de Querol
#> 21                                           Llo
#> 22                                         Naüja
#> 23                                         Oceja
#> 24                             Palau de Cerdanya
#> 25                                         Porta
#> 26                                         Portè
#> 27                                     Sallagosa
#> 28                                 Santa Llocaia
#> 29                                     Targasona
#> 30                                            Ur
#> 31                                 Vallcebollera
#> 32                                    els Angles
#> 33                                  Font-rabiosa
#> 34                                    Formiguera
#> 35                                      Matamala
#> 36                                   Puigbalador
#> 37                                          Real
#> 38                            Aiguatèbia i Talau
#> 39                                      Arboçols
#> 40                                       Campome
#> 41                                    Canavelles
#> 42                             Castell de Vernet
#> 43                                        Catllà
#> 44                          Caudiers de Conflent
#> 45                              Clarà i Villerac
#> 46                                       Codalet
#> 47                                         Conat
#> 48                          Cornellà de Conflent
#> 49                                     els Masos
#> 50                                        Escaró
#> 51                            Espirà de Conflent
#> 52                                        Estoer
#> 53                                           Eus
#> 54                                       Fillols
#> 55                                     Finestret
#> 56                                   Fontpedrosa
#> 57                                         Fullà
#> 58                                     Glorianes
#> 59                                           Jóc
#> 60                                        Jújols
#> 61                                  la Cabanassa
#> 62                                    la Llaguna
#> 63                                  Marqueixanes
#> 64                                        Mentet
#> 65                                         Molig
#> 66                                     Montlluís
#> 67                                        Mosset
#> 68                                        Noedes
#> 69                                          Nyer
#> 70                                  Oleta i Èvol
#> 71                                       Orbanyà
#> 72                                        Orellà
#> 73                                Pi de Conflent
#> 74                                        Planès
#> 75                                         Prada
#> 76                                        Ralleu
#> 77                                   Rià i Cirac
#> 78                                       Rigardà
#> 79                                         Rodés
#> 80                                         Sançà
#> 81                        Sant Pere dels Forcats
#> 82                                        Saorra
#> 83                                         Sautó
#> 84                                      Serdinyà
#> 85                                       Soanyes
#> 86                                       Tarerac
#> 87                                      Taurinyà
#> 88                             Toès i Entrevalls
#> 89                                   Vallestàvia
#> 90                                     Vallmanya
#> 91                                        Vernet
#> 92                        Vilafranca de Conflent
#> 93                                         Vinçà
#> 94                                       Ansinyà
#> 95                                     Bellestar
#> 96                                      Campossí
#> 97                                      Caramany
#> 98                                     Cassanyes
#> 99                          Caudiers de Fenollet
#> 100                                    Centernac
#> 101                                     El Viver
#> 102                                      Felluns
#> 103                                     Fenollet
#> 104                                        Fossa
#> 105                                   l'Esquerda
#> 106                             la Tor de França
#> 107                                       lançac
#> 108                                        Maurí
#> 109                          Montalban lo Castèl
#> 110                          Pesillà de Conflent
#> 111                                     Planeses
#> 112                              Prats de Sornià
#> 113                                    Prunyanes
#> 114                                   Rasigueres
#> 115                                     Rebollet
#> 116                       Sant Martí de Fenollet
#> 117                         Sant Pau de Fenollet
#> 118                                       Sornià
#> 119                                    Trevillac
#> 120                                       Trillà
#> 121                                         Virà
#> 122                                       Alenyà
#> 123                                     Argelers
#> 124                            Bages de Rosselló
#> 125                                       Baixàs
#> 126                        Banyuls de la Marenda
#> 127                          Banyuls dels Aspres
#> 128                                          Bao
#> 129                                       Bompàs
#> 130                                       Brullà
#> 131                                 Bula d'Amunt
#> 132                                  Bulaternera
#> 133                                    Cabestany
#> 134                                        Calce
#> 135                                     Calmella
#> 136                                      Cameles
#> 137                            Canet de Rosselló
#> 138                                       Cànoes
#> 139                                    Casafabre
#> 140                                Cases de Pena
#> 141                                   Castellnou
#> 142                        Cervera de la Marenda
#> 143                                       Clairà
#> 144                                      Corbera
#> 145                       Corbera de les Cabanes
#> 146                        Cornellà de la Ribera
#> 147                          Cornellà del Bercol
#> 148                                    Cotlliure
#> 149                                  el Barcarès
#> 150                                     el Soler
#> 151                                      el Voló
#> 152                                         Elna
#> 153                             Espirà de l'Aglí
#> 154                                     Estagell
#> 155                                      Forques
#> 156                                         Illa
#> 157                                     l'Albera
#> 158                                   la Bastida
#> 159                             la Roca d'Albera
#> 160                           la Torre del Bisbe
#> 161                                   les Cluses
#> 162                                       Llauró
#> 163                                       Llupià
#> 164                                      Millars
#> 165                                    Montescot
#> 166                          Montesquiu d'Albera
#> 167                                      Montner
#> 168                                    Montoriol
#> 169                                       Nefiac
#> 170                                          Oms
#> 171                              Òpol i Perellós
#> 172                                       Ortafà
#> 173                                         Paçà
#> 174                              Palau del Vidre
#> 175                                 Paretstortes
#> 176                                     Perpinyà
#> 177                         Pesillà de la Ribera
#> 178                                          Pià
#> 179                                   Pollestres
#> 180                                     Pontellà
#> 181                                  Portvendres
#> 182                            Prunet i Bellpuig
#> 183                                      Queixàs
#> 184                                   Ribesaltes
#> 185                                     Salelles
#> 186                                       Salses
#> 187                        Sant Andreu de Sureda
#> 188                      Sant Cebrià de Rosselló
#> 189                     Sant Esteve del Monestir
#> 190                           Sant Feliu d'Amunt
#> 191                           Sant Feliu d'Avall
#> 192                       Sant Genís de Fontanes
#> 193                   Sant Hipòlit de la Salanca
#> 194                           Sant Joan la Cella
#> 195                   Sant Llorenç de la Salanca
#> 196                        Sant Miquel de Llotes
#> 197                      Sant Nazari de Rosselló
#> 198                         Santa Coloma de Tuïr
#> 199                           Santa Maria la Mar
#> 200                                       Sureda
#> 201                                     Talteüll
#> 202                                      Terrats
#> 203                                         Tesà
#> 204                                      Toluges
#> 205                                     Torderes
#> 206                      Torrelles de la Salanca
#> 207                                    Trasserra
#> 208                                     Trullars
#> 209                                         Tuïr
#> 210                     Vilallonga de la Salanca
#> 211                        Vilallonga dels Monts
#> 212                                   Vilamulaca
#> 213                        Vilanova de la Ribera
#> 214                              Vilanova de Raó
#> 215                                      Vingrau
#> 216                                        Arles
#> 217                                        Ceret
#> 218                                     Cortsaví
#> 219                                      Costoja
#> 220                                    el Pertús
#> 221                                       el Tec
#> 222                  els Banys d'Arles i Palaldà
#> 223                                    la Menera
#> 224                                     Montboló
#> 225                                   Montferrer
#> 226                         Morellàs i les Illes
#> 227                   Prats de Molló i la Presta
#> 228                                      Reiners
#> 229                      Sant Joan de Pladecorts
#> 230                      Sant Llorenç de Cerdans
#> 231                                  Sant Marçal
#> 232                                  Serrallonga
#> 233                                       Tellet
#> 234                                       Teulís
#> 235                                       Vivers
#> 236                       Aiguaviva de Bergantes
#> 237                           Bellmunt de Mesquí
#> 238                          la Canyada de Beric
#> 239                                 la Codonyera
#> 240                                 la Ginebrosa
#> 241                                 la Sorollera
#> 242                          la Torre de Vilella
#> 243                                         Faió
#> 244                                       Favara
#> 245                                       Maella
#> 246                                       Nonasp
#> 247                                        Fraga
#> 248                                   Mequinensa
#> 249                                        Saidí
#> 250                             Torrent de Cinca
#> 251                             Vilella de Cinca
#> 252                                      Albelda
#> 253                                       Baells
#> 254                                  Camporrells
#> 255                                 Castellonroi
#> 256                                   el Campell
#> 257                                   el Torricó
#> 258                          Peralta i Calassanç
#> 259                       Sant Esteve de Llitera
#> 260                                Sanui i Alins
#> 261                           Tamarit de Llitera
#> 262                                   Valldellou
#> 263                                     Vensilló
#> 264                              Arenys de Lledó
#> 265                                       Beseit
#> 266                                     Calaceit
#> 267                                 Fontdespatla
#> 268                                      Fórnols
#> 269                                 la Freixneda
#> 270                                la Portellada
#> 271                           la Torre del Comte
#> 272                            la Vall del Tormo
#> 273                               Lledó d'Algars
#> 274                                     Massalió
#> 275                                     Montroig
#> 276                       Pena-roja de Tastavins
#> 277                                     Queretes
#> 278                                       Ràfels
#> 279                                 Torredarques
#> 280                               Vall-de-roures
#> 281                                 Valljunquera
#> 282                             Areny de Noguera
#> 283                                    Benavarri
#> 284                                      Beranui
#> 285                                      Bonansa
#> 286                                   Castigaleu
#> 287                                    Estopanyà
#> 288                                      Isàvena
#> 289                                    Lasquarri
#> 290                                    Les Paüls
#> 291                          Monesma i Queixigar
#> 292                                     Montanui
#> 293                           Pont de Montanyana
#> 294                                      Sopeira
#> 295                                        Tolba
#> 296                                Tor-la-ribera
#> 297                            Viacamp i Lliterà
#> 298                                      Eivissa
#> 299                      Sant Antoni de Portmany
#> 300                        Sant Joan de Labritja
#> 301                      Sant Josep de sa Talaia
#> 302                        Santa Eulària des Riu
#> 303                                   Formentera
#> 304                                         Artà
#> 305                                    Capdepera
#> 306                                      Manacor
#> 307                   Sant Llorenç des Cardassar
#> 308                                  Son Servera
#> 309                                       Alaior
#> 310                                   Ciutadella
#> 311                                   es Castell
#> 312                                  es Mercadal
#> 313                              es Migjorn Gran
#> 314                                    Ferreries
#> 315                                          Maó
#> 316                                   Sant Lluís
#> 317                                       Campos
#> 318                                     Felanitx
#> 319                                    Llucmajor
#> 320                                     Santanyí
#> 321                                  ses Salines
#> 322                                        Palma
#> 323                                      Algaida
#> 324                                       Ariany
#> 325                                      Costitx
#> 326                         Lloret de Vistalegre
#> 327                                        Llubí
#> 328                            Maria de la Salut
#> 329                                     Montuïri
#> 330                                         Muro
#> 331                                        Petra
#> 332                                     Porreres
#> 333                                    Sant Joan
#> 334                                Santa Eugènia
#> 335                              Santa Margalida
#> 336                                    Sencelles
#> 337                                        Sineu
#> 338                         Vilafranca de Bonany
#> 339                                        Alaró
#> 340                                      Alcúdia
#> 341                                   Binissalem
#> 342                                        Búger
#> 343                                     Campanet
#> 344                                      Consell
#> 345                                         Inca
#> 346                                      Lloseta
#> 347                            Mancor de la Vall
#> 348                                     Marratxí
#> 349                                     sa Pobla
#> 350                         Santa Maria del Camí
#> 351                                        Selva
#> 352                                      Andratx
#> 353                                  Banyalbufar
#> 354                                      Bunyola
#> 355                                       Calvià
#> 356                                         Deià
#> 357                                      Escorca
#> 358                                     Esporles
#> 359                                   Estellencs
#> 360                                    Fornalutx
#> 361                                     Pollença
#> 362                                  Puigpunyent
#> 363                                       Sóller
#> 364                                  Valldemossa
#> 365                                  Aiguamúrcia
#> 366                                      Alcover
#> 367                                         Alió
#> 368                                       Bràfim
#> 369                               Cabra del Camp
#> 370                                      el Milà
#> 371                        el Pla de Santa Maria
#> 372                          el Pont d'Armentera
#> 373                                   el Rourell
#> 374                                els Garidells
#> 375                           Figuerola del Camp
#> 376                                      la Masó
#> 377                                      la Riba
#> 378                                     Mont-ral
#> 379                                    Montferri
#> 380                                       Nulles
#> 381                                    Puigpelat
#> 382                                       Querol
#> 383                                      Rodonyà
#> 384                                     Vallmoll
#> 385                                        Valls
#> 386                                  Vila-rodona
#> 387                                    Vilabella
#> 388                                     Agullana
#> 389                                      Albanyà
#> 390                      Avinyonet de Puigventós
#> 391                                      Bàscara
#> 392                                        Biure
#> 393                      Boadella i les Escaules
#> 394                                     Borrassà
#> 395                                   Cabanelles
#> 396                                      Cabanes
#> 397                                     Cadaqués
#> 398                                     Campmany
#> 399                                   Cantallops
#> 400                          Castelló d'Empúries
#> 401                                     Cistella
#> 402                                       Colera
#> 403                                      Darnius
#> 404                             el Far d'Empordà
#> 405                          el Port de la Selva
#> 406                                      Espolla
#> 407                                     Figueres
#> 408                                       Fortià
#> 409                                     Garrigàs
#> 410                                  Garriguella
#> 411                                  l'Armentera
#> 412                                     l'Escala
#> 413                                  la Jonquera
#> 414                              la Selva de Mar
#> 415                                     la Vajol
#> 416                                       Llançà
#> 417                              Lledó d'Empordà
#> 418                                        Llers
#> 419                          Maçanet de Cabrenys
#> 420                         Masarac i Vilarnadal
#> 421                           Mollet de Peralada
#> 422                                       Navata
#> 423                                        Ordis
#> 424                       Palau de Santa Eulàlia
#> 425                              Palau-saverdera
#> 426                                          Pau
#> 427                               Pedret i Marzà
#> 428                                     Peralada
#> 429                               Pont de Molins
#> 430                                       Pontós
#> 431                                      Portbou
#> 432                                        Rabós
#> 433                                      Riumors
#> 434                                        Roses
#> 435                        Sant Climent Sescebes
#> 436                      Sant Llorenç de la Muga
#> 437                        Sant Miquel de Fluvià
#> 438                                    Sant Mori
#> 439                           Sant Pere Pescador
#> 440                      Santa Llogaia d'Àlguema
#> 441                  Saus, Camallera i Llampaies
#> 442                                      Siurana
#> 443                                     Terrades
#> 444                          Torroella de Fluvià
#> 445                                     Ventalló
#> 446                                   Vila-sacra
#> 447                                  Vilabertran
#> 448                                    Viladamat
#> 449                                     Vilafant
#> 450                                    Vilajuïga
#> 451                                  Vilamacolum
#> 452                                    Vilamalla
#> 453                                 Vilamaniscle
#> 454                                     Vilanant
#> 455                                       Vilaür
#> 456                        Avinyonet del Penedès
#> 457                        Castellet i la Gornal
#> 458                        Castellví de la Marca
#> 459                           el Pla del Penedès
#> 460                                    Font-rubí
#> 461                                       Gelida
#> 462                                   la Granada
#> 463                                 les Cabanyes
#> 464                                      Mediona
#> 465                                     Olèrdola
#> 466                          Olesa de Bonesvalls
#> 467                             Pacs del Penedès
#> 468                                      Pontons
#> 469                                   Puigdàlber
#> 470                      Sant Cugat Sesgarrigues
#> 471                       Sant Llorenç d'Hortons
#> 472                           Sant Martí Sarroca
#> 473                    Sant Pere de Riudebitlles
#> 474                       Sant Quintí de Mediona
#> 475                         Sant Sadurní d'Anoia
#> 476                         Santa Fe del Penedès
#> 477                 Santa Margarida i els Monjos
#> 478                                     Subirats
#> 479                           Terrassola i Lavit
#> 480                            Torrelles de Foix
#> 481                       Vilafranca del Penedès
#> 482                           Vilobí del Penedès
#> 483                                  Alàs i Cerc
#> 484                                     Arsèguel
#> 485                                     Bassella
#> 486                                         Cabó
#> 487                                         Cava
#> 488                                Coll de Nargó
#> 489                               el Pont de Bar
#> 490                                    Estamariu
#> 491                              Fígols i Alinyà
#> 492                                Josa i Tuixén
#> 493                              la Seu d'Urgell
#> 494                           la Vansa i Fórnols
#> 495                          les Valls d'Aguilar
#> 496                          les Valls de Valira
#> 497                       Montferrer i Castellbò
#> 498                                       Oliana
#> 499                                      Organyà
#> 500                                     Peramola
#> 501                            Ribera d'Urgellet
#> 502                             el Pont de Suert
#> 503                               la Vall de Boí
#> 504                                     Vilaller
#> 505                                    Argençola
#> 506                                     Bellprat
#> 507                              Cabrera d'Anoia
#> 508                                        Calaf
#> 509                           Calonge de Segarra
#> 510                                   Capellades
#> 511                                        Carme
#> 512                   Castellfollit de Riubregós
#> 513                                   Castellolí
#> 514                                       Copons
#> 515                                      el Bruc
#> 516                     els Hostalets de Pierola
#> 517                             els Prats de Rei
#> 518                                     Igualada
#> 519                                        Jorba
#> 520                                   la Llacuna
#> 521                        la Pobla de Claramunt
#> 522                        la Torre de Claramunt
#> 523                                     Masquefa
#> 524                                    Montmaneu
#> 525                                        Òdena
#> 526                                         Orpí
#> 527                                        Piera
#> 528                                       Pujalt
#> 529                                        Rubió
#> 530                           Sant Martí de Tous
#> 531                       Sant Martí Sesgueioles
#> 532                        Sant Pere Sallavinera
#> 533                   Santa Margarida de Montbui
#> 534                      Santa Maria de Miralles
#> 535                             Vallbona d'Anoia
#> 536                                      Veciana
#> 537                            Vilanova del Camí
#> 538                           Aguilar de Segarra
#> 539                                        Artés
#> 540                                       Avinyó
#> 541                                    Balsareny
#> 542                                       Callús
#> 543                                      Cardona
#> 544                       Castellbell i el Vilar
#> 545                       Castellfollit del Boix
#> 546                                  Castellgalí
#> 547                          Castellnou de Bages
#> 548               el Pont de Vilomara i Rocafort
#> 549                                    Fonollosa
#> 550                                         Gaià
#> 551                                      Manresa
#> 552                                    Marganell
#> 553                      Monistrol de Montserrat
#> 554                                         Mura
#> 555                                    Navarcles
#> 556                                       Navars
#> 557                                     Rajadell
#> 558                                      Sallent
#> 559                          Sant Feliu Sasserra
#> 560                        Sant Fruitós de Bages
#> 561                     Sant Joan de Vilatorrada
#> 562                          Sant Mateu de Bages
#> 563                   Sant Salvador de Guardiola
#> 564                     Sant Vicenç de Castellet
#> 565                                    Santpedor
#> 566                                        Súria
#> 567                                    Talamanca
#> 568                                      Alforja
#> 569                                     Almoster
#> 570                                       Arbolí
#> 571                                     Botarell
#> 572                                     Cambrils
#> 573                                    Capafonts
#> 574                         Castellvell del Camp
#> 575                                    Colldejou
#> 576                                   Duesaigües
#> 577                                     l'Albiol
#> 578                                    l'Aleixar
#> 579                                  l'Argentera
#> 580                                     la Febró
#> 581                            la Selva del Camp
#> 582                          les Borges del Camp
#> 583                                    Maspujols
#> 584                           Mont-roig del Camp
#> 585                            Montbrió del Camp
#> 586                                       Prades
#> 587                                      Pratdip
#> 588                                         Reus
#> 589                                  Riudecanyes
#> 590                                    Riudecols
#> 591                                      Riudoms
#> 592         Vandellòs i l'Hospitalet de l'Infant
#> 593                       Vilanova d'Escornalbou
#> 594                                    Vilaplana
#> 595                           Vinyols i els Arcs
#> 596                                      Aldover
#> 597                             Alfara de Carles
#> 598                                   Benifallet
#> 599                                     Camarles
#> 600                                     Deltebre
#> 601                                   el Perelló
#> 602                                      l'Aldea
#> 603                             l'Ametlla de Mar
#> 604                                    l'Ampolla
#> 605                                        Paüls
#> 606                                     Roquetes
#> 607                                      Tivenys
#> 608                                      Tortosa
#> 609                                        Xerta
#> 610                                       Albons
#> 611                                        Begur
#> 612                          Bellcaire d'Empordà
#> 613                        Calonge i Sant Antoni
#> 614        Castell d'Aro, Platja d'Aro i s'Agaró
#> 615                                     Colomers
#> 616                                        Corçà
#> 617  Cruïlles, Monells i Sant Sadurní de l'Heura
#> 618                                        Foixà
#> 619                                  Fontanilles
#> 620                                   Garrigoles
#> 621                                       Gualta
#> 622                                        Jafre
#> 623                          la Bisbal d'Empordà
#> 624                                      la Pera
#> 625                         la Tallada d'Empordà
#> 626                                     Mont-ras
#> 627                                  Palafrugell
#> 628                                      Palamós
#> 629                                  Palau-sator
#> 630                                         Pals
#> 631                                      Parlavà
#> 632                                     Regencós
#> 633                                        Rupià
#> 634                        Sant Feliu de Guíxols
#> 635                         Santa Cristina d'Aro
#> 636                                Serra de Daró
#> 637                                      Torrent
#> 638                         Torroella de Montgrí
#> 639                                         Ullà
#> 640                                    Ullastret
#> 641                                    Ultramort
#> 642                                Vall-llobrega
#> 643                                       Verges
#> 644                                     Vilopriu
#> 645             Vulpellac, Fonteta i Peratallada
#> 646                                       Abrera
#> 647                                       Begues
#> 648                                Castelldefels
#> 649                         Castellví de Rosanes
#> 650                                     Cervelló
#> 651                                     Collbató
#> 652                         Corbera de Llobregat
#> 653                        Cornellà de Llobregat
#> 654                                    el Papiol
#> 655                         el Prat de Llobregat
#> 656                                 Esparreguera
#> 657                       Esplugues de Llobregat
#> 658                                         Gavà
#> 659                         la Palma de Cervelló
#> 660                                    Martorell
#> 661                                Molins de Rei
#> 662                          Olesa de Montserrat
#> 663                                      Pallejà
#> 664                      Sant Andreu de la Barca
#> 665                        Sant Boi de Llobregat
#> 666                    Sant Climent de Llobregat
#> 667                       Sant Esteve Sesrovires
#> 668                      Sant Feliu de Llobregat
#> 669                              Sant Joan Despí
#> 670                            Sant Just Desvern
#> 671                       Sant Vicenç dels Horts
#> 672                     Santa Coloma de Cervelló
#> 673                       Torrelles de Llobregat
#> 674                                    Vallirana
#> 675                                   Viladecans
#> 676                                    Albinyana
#> 677                         Banyeres del Penedès
#> 678                                      Bellvei
#> 679                                     Bonastre
#> 680                                     Calafell
#> 681                                        Cunit
#> 682                                  el Montmell
#> 683                                  el Vendrell
#> 684                                      l'Arboç
#> 685                        la Bisbal del Penedès
#> 686                          Llorenç del Penedès
#> 687                                   Masllorenç
#> 688                      Sant Jaume dels Domenys
#> 689                                  Santa Oliva
#> 690                                     Badalona
#> 691                                    Barcelona
#> 692                    l'Hospitalet de Llobregat
#> 693                          Sant Adrià de Besòs
#> 694                     Santa Coloma de Gramenet
#> 695                                         Avià
#> 696                                         Bagà
#> 697                                        Berga
#> 698                                      Borredà
#> 699                                      Capolat
#> 700                                    Casserres
#> 701                           Castell de l'Areny
#> 702                           Castellar de n'Hug
#> 703                            Castellar del Riu
#> 704                                        Cercs
#> 705                                       Fígols
#> 706                                    Gironella
#> 707                                   Gisclareny
#> 708                                        Gósol
#> 709                        Guardiola de Berguedà
#> 710                                  l'Espunyola
#> 711                           la Nou de Berguedà
#> 712                           la Pobla de Lillet
#> 713                                      la Quar
#> 714                                     Montclar
#> 715                                    Montmajor
#> 716                                        Olvan
#> 717                                    Puig-reig
#> 718                                        Sagàs
#> 719                                       Saldes
#> 720                      Sant Jaume de Frontanyà
#> 721                     Sant Julià de Cerdanyola
#> 722                        Santa Maria de Merlès
#> 723                                    Vallcebre
#> 724                                       Vilada
#> 725                            Viver i Serrateix
#> 726                                          Alp
#> 727                          Bellver de Cerdanya
#> 728                                       Bolvir
#> 729                                          Das
#> 730                        Fontanals de Cerdanya
#> 731                                          Ger
#> 732                            Guils de Cerdanya
#> 733                                       Isòvol
#> 734                             Lles de Cerdanya
#> 735                                       Llívia
#> 736                                     Meranges
#> 737                          Montellà i Martinet
#> 738                               Prats i Sansor
#> 739                                     Prullans
#> 740                                    Puigcerdà
#> 741                              Riu de Cerdanya
#> 742                                         Urús
#> 743                          Barberà de la Conca
#> 744                                   Blancafort
#> 745                                       Conesa
#> 746                                        Forès
#> 747                        l'Espluga de Francolí
#> 748                                    les Piles
#> 749                                       Llorac
#> 750                                    Montblanc
#> 751                         Passanant i Belltall
#> 752                                         Pira
#> 753                                      Pontils
#> 754                          Rocafort de Queralt
#> 755                      Santa Coloma de Queralt
#> 756                                       Sarral
#> 757                           Savallà del Comtat
#> 758                                        Senan
#> 759                                    Solivella
#> 760                                    Vallclara
#> 761                        Vallfogona de Riucorb
#> 762                           Vilanova de Prades
#> 763                                     Vilaverd
#> 764                             Vimbodí i Poblet
#> 765                                    Canyelles
#> 766                                     Cubelles
#> 767                                     Olivella
#> 768                           Sant Pere de Ribes
#> 769                                       Sitges
#> 770                         Vilanova i la Geltrú
#> 771                                       Arbeca
#> 772                                  Bellaguarda
#> 773                                       Bovera
#> 774                                  Castelldans
#> 775                      Cervià de les Garrigues
#> 776                                     el Cogul
#> 777                                   el Soleràs
#> 778                                  el Vilosell
#> 779                                 els Omellons
#> 780                                    els Torms
#> 781                                      Fulleda
#> 782                    Granyena de les Garrigues
#> 783                                      Juncosa
#> 784                                       Juneda
#> 785                                    l'Albagés
#> 786                                       l'Albi
#> 787                              l'Espluga Calba
#> 788                                  la Floresta
#> 789                                la Granadella
#> 790                         la Pobla de Cérvoles
#> 791                          les Borges Blanques
#> 792                                     Puiggròs
#> 793                                       Tarrés
#> 794                                      Vinaixa
#> 795                                   Argelaguer
#> 796                                       Besalú
#> 797                                        Beuda
#> 798                     Castellfollit de la Roca
#> 799                             la Vall d'en Bas
#> 800                            la Vall de Bianya
#> 801                        les Planes d'Hostoles
#> 802                                   les Preses
#> 803                              Maià de Montcal
#> 804                                       Mieres
#> 805                               Montagut i Oix
#> 806                                         Olot
#> 807                                     Riudaura
#> 808                             Sales de Llierca
#> 809                      Sant Aniol de Finestres
#> 810                      Sant Feliu de Pallerols
#> 811                                 Sant Ferriol
#> 812                        Sant Jaume de Llierca
#> 813                          Sant Joan les Fonts
#> 814                                    Santa Pau
#> 815                                     Tortellà
#> 816                                    Aiguaviva
#> 817                                      Bescanó
#> 818                                      Bordils
#> 819                                    Campllong
#> 820                                 Canet d'Adri
#> 821                            Cassà de la Selva
#> 822                                        Celrà
#> 823                                Cervià de Ter
#> 824                                        Flaçà
#> 825                         Fornells de la Selva
#> 826                                       Girona
#> 827                                         Juià
#> 828                                   Llagostera
#> 829                                   Llambilles
#> 830                                   Madremanya
#> 831                                      Medinyà
#> 832                                        Quart
#> 833                                         Salt
#> 834                            Sant Andreu Salou
#> 835                                 Sant Gregori
#> 836                          Sant Joan de Mollet
#> 837                          Sant Jordi Desvalls
#> 838                          Sant Julià de Ramis
#> 839                        Sant Martí de Llémena
#> 840                              Sant Martí Vell
#> 841                                Sarrià de Ter
#> 842                                  Vilablareix
#> 843                                   Viladasens
#> 844                                       Alpens
#> 845                                        Lluçà
#> 846                                        Olost
#> 847                                       Oristà
#> 848                                     Perafita
#> 849                            Prats de Lluçanès
#> 850                          Sant Martí d'Albars
#> 851                                    Sobremunt
#> 852                                       Alella
#> 853                                Arenys de Mar
#> 854                               Arenys de Munt
#> 855                                    Argentona
#> 856                               Cabrera de Mar
#> 857                                      Cabrils
#> 858                              Caldes d'Estrac
#> 859                                      Calella
#> 860                                 Canet de Mar
#> 861                                      Dosrius
#> 862                                    el Masnou
#> 863                               Malgrat de Mar
#> 864                                       Mataró
#> 865                                      Montgat
#> 866                                       Òrrius
#> 867                                    Palafolls
#> 868                                Pineda de Mar
#> 869                               Premià de Dalt
#> 870                                Premià de Mar
#> 871                    Sant Andreu de Llavaneres
#> 872                      Sant Cebrià de Vallalta
#> 873                       Sant Iscle de Vallalta
#> 874                              Sant Pol de Mar
#> 875                       Sant Vicenç de Montalt
#> 876                                Santa Susanna
#> 877                                         Teià
#> 878                                        Tiana
#> 879                                      Tordera
#> 880                             Vilassar de Dalt
#> 881                              Vilassar de Mar
#> 882                                      Calders
#> 883                                   Castellcir
#> 884                                Castellterçol
#> 885                                  Collsuspina
#> 886                                      Granera
#> 887                                     l'Estany
#> 888                                         Moià
#> 889                         Monistrol de Calders
#> 890                           Sant Quirze Safaja
#> 891                            Santa Maria d'Oló
#> 892                                      Alcanar
#> 893                                      Amposta
#> 894                                    Freginals
#> 895                                       Godall
#> 896                                    la Galera
#> 897                                    la Ràpita
#> 898                                     la Sénia
#> 899                             Mas de Barberans
#> 900                                  Masdenverge
#> 901                          Sant Jaume d'Enveja
#> 902                                Santa Bàrbara
#> 903                                    Ulldecona
#> 904                                         Àger
#> 905                                       Albesa
#> 906                                      Algerri
#> 907                             Alòs de Balaguer
#> 908                              Artesa de Segre
#> 909                                     Balaguer
#> 910                           Bellcaire d'Urgell
#> 911                            Bellmunt d'Urgell
#> 912                                   Cabanabona
#> 913                                     Camarasa
#> 914                         Castelló de Farfanya
#> 915                                      Cubells
#> 916                                     Foradada
#> 917                             Ivars de Noguera
#> 918                          la Baronia de Rialb
#> 919                             la Sentiu de Sió
#> 920                  les Avellanes i Santa Linya
#> 921                                   Menàrguens
#> 922                                      Montgai
#> 923                                       Oliola
#> 924                               Os de Balaguer
#> 925                                     Penelles
#> 926                                        Ponts
#> 927                                     Preixens
#> 928                                      Térmens
#> 929                                      Tiurana
#> 930                                   Torrelameu
#> 931                       Vallfogona de Balaguer
#> 932                          Vilanova de l'Aguda
#> 933                             Vilanova de Meià
#> 934                                      Balenyà
#> 935                                  Calldetenes
#> 936                                    Centelles
#> 937                                     el Brull
#> 938                                   Espinelves
#> 939                                  Folgueroles
#> 940                                         Gurb
#> 941                                   l'Esquirol
#> 942                           les Masies de Roda
#> 943                       les Masies de Voltregà
#> 944                                        Malla
#> 945                                      Manlleu
#> 946                                   Montesquiu
#> 947                                   Muntanyola
#> 948                                         Orís
#> 949                                  Roda de Ter
#> 950                                Rupit i Pruit
#> 951                      Sant Agustí de Lluçanès
#> 952                       Sant Bartomeu del Grau
#> 953                         Sant Boi de Lluçanès
#> 954                     Sant Hipòlit de Voltregà
#> 955                      Sant Julià de Vilatorta
#> 956                      Sant Martí de Centelles
#> 957                         Sant Pere de Torelló
#> 958                        Sant Quirze de Besora
#> 959                      Sant Sadurní d'Osormort
#> 960                       Sant Vicenç de Torelló
#> 961                    Santa Cecília de Voltregà
#> 962                       Santa Eugènia de Berga
#> 963                   Santa Eulàlia de Riuprimer
#> 964                        Santa Maria de Besora
#> 965                                         Seva
#> 966                                         Sora
#> 967                                     Taradell
#> 968                                   Tavèrnoles
#> 969                                     Tavertet
#> 970                                         Tona
#> 971                                      Torelló
#> 972                                          Vic
#> 973                                        Vidrà
#> 974                                     Viladrau
#> 975                              Vilanova de Sau
#> 976                           Abella de la Conca
#> 977                               Castell de Mur
#> 978                                Conca de Dalt
#> 979                            Gavet de la Conca
#> 980                          Isona i Conca Dellà
#> 981                            la Pobla de Segur
#> 982                         la Torre de Cabdella
#> 983                                     Llimiana
#> 984                             Salàs de Pallars
#> 985                      Sant Esteve de la Sarga
#> 986                           Sarroca de Bellera
#> 987                                    Senterada
#> 988                                       Talarn
#> 989                                        Tremp
#> 990                                        Alins
#> 991                                     Alt Àneu
#> 992                                 Baix Pallars
#> 993                                        Espot
#> 994                               Esterri d'Àneu
#> 995                            Esterri de Cardós
#> 996                                      Farrera
#> 997                          la Guingueta d'Àneu
#> 998                                     Lladorre
#> 999                                     Llavorsí
#> 1000                                       Rialb
#> 1001                                   Soriguera
#> 1002                                        Sort
#> 1003                                      Tírvia
#> 1004                              Vall de Cardós
#> 1005                                     Barbens
#> 1006                          Bell-lloc d'Urgell
#> 1007                                     Bellvís
#> 1008                         Castellnou de Seana
#> 1009                        el Palau d'Anglesola
#> 1010                                     el Poal
#> 1011                                  Fondarella
#> 1012                                      Golmés
#> 1013                              Ivars d'Urgell
#> 1014                                     Linyola
#> 1015                                   Miralcamp
#> 1016                                  Mollerussa
#> 1017                                     Sidamon
#> 1018                                 Torregrossa
#> 1019                                   Vila-sana
#> 1020                        Vilanova de Bellpuig
#> 1021                                    Banyoles
#> 1022                                       Camós
#> 1023                          Cornellà del Terri
#> 1024                                     Crespià
#> 1025                                   Esponellà
#> 1026                                 Fontcoberta
#> 1027                           Palol de Revardit
#> 1028                                   Porqueres
#> 1029                    Sant Miquel de Campmajor
#> 1030                                     Serinyà
#> 1031                                  Vilademuls
#> 1032                        Bellmunt del Priorat
#> 1033                                   Cabassers
#> 1034                                    Capçanes
#> 1035                      Cornudella de Montsant
#> 1036                                    el Lloar
#> 1037                                  el Masroig
#> 1038                                    el Molar
#> 1039                                els Guiamets
#> 1040                                      Falset
#> 1041                                  Gratallops
#> 1042                       la Bisbal de Montsant
#> 1043                                  la Figuera
#> 1044                       la Morera de Montsant
#> 1045                     la Torre de Fontaubella
#> 1046                             la Vilella Alta
#> 1047                            la Vilella Baixa
#> 1048                                       Marçà
#> 1049                                    Margalef
#> 1050                                    Poboleda
#> 1051                                     Porrera
#> 1052                       Pradell de la Teixeta
#> 1053                         Torroja del Priorat
#> 1054                                 Ulldemolins
#> 1055                                        Ascó
#> 1056                                  Benissanet
#> 1057                                        Flix
#> 1058                                      Garcia
#> 1059                                    Ginestar
#> 1060                             la Palma d'Ebre
#> 1061                      la Torre de l'Espanyol
#> 1062                                     Miravet
#> 1063                                 Móra d'Ebre
#> 1064                                Móra la Nova
#> 1065                                    Rasquera
#> 1066                            Riba-roja d'Ebre
#> 1067                                     Tivissa
#> 1068                                     Vinebre
#> 1069                                 Campdevànol
#> 1070                                   Campelles
#> 1071                                   Camprodon
#> 1072                                     Gombrèn
#> 1073                                 les Llosses
#> 1074                                     Llanars
#> 1075                                       Molló
#> 1076                                      Ogassa
#> 1077                                    Pardines
#> 1078                                    Planoles
#> 1079                                    Queralbs
#> 1080                             Ribes de Freser
#> 1081                                      Ripoll
#> 1082                  Sant Joan de les Abadesses
#> 1083                        Sant Pau de Segúries
#> 1084                                    Setcases
#> 1085                                       Toses
#> 1086                      Vallfogona de Ripollès
#> 1087                           Vilallonga de Ter
#> 1088                                      Biosca
#> 1089                                     Cervera
#> 1090                            els Plans de Sió
#> 1091                                     Estaràs
#> 1092                                 Granyanella
#> 1093                         Granyena de Segarra
#> 1094                                    Guissona
#> 1095                                      Ivorra
#> 1096                                  les Oluges
#> 1097                                  Massoteres
#> 1098                         Montoliu de Segarra
#> 1099                        Montornès de Segarra
#> 1100                             Ribera d'Ondara
#> 1101                                     Sanaüja
#> 1102                      Sant Guim de Freixenet
#> 1103                       Sant Guim de la Plana
#> 1104                                  Sant Ramon
#> 1105                                    Talavera
#> 1106                          Tarroja de Segarra
#> 1107                                        Torà
#> 1108                       Torrefeta i Florejacs
#> 1109                                      Aitona
#> 1110                                  Albatàrrec
#> 1111                                      Alcanó
#> 1112                                    Alcarràs
#> 1113                                   Alcoletge
#> 1114                                    Alfarràs
#> 1115                                       Alfés
#> 1116                                    Alguaire
#> 1117                                  Almacelles
#> 1118                                    Almatret
#> 1119                                     Almenar
#> 1120                                     Alpicat
#> 1121                            Artesa de Lleida
#> 1122                                        Aspa
#> 1123                          Benavent de Segrià
#> 1124                                     Corbins
#> 1125                                  els Alamús
#> 1126               Gimenells i el Pla de la Font
#> 1127                          la Granja d'Escarp
#> 1128                                 la Portella
#> 1129                                  Llardecans
#> 1130                                      Lleida
#> 1131                                      Maials
#> 1132                                Massalcoreig
#> 1133                          Montoliu de Lleida
#> 1134                          Puigverd de Lleida
#> 1135                                    Rosselló
#> 1136                           Sarroca de Lleida
#> 1137                                       Seròs
#> 1138                                       Soses
#> 1139                                    Sudanell
#> 1140                                      Sunyer
#> 1141                                Torre-serona
#> 1142                                 Torrebesses
#> 1143                                Torrefarrera
#> 1144                             Torres de Segre
#> 1145                        Vilanova de la Barca
#> 1146                          Vilanova de Segrià
#> 1147                                        Amer
#> 1148                                      Anglès
#> 1149                                    Arbúcies
#> 1150                                      Blanes
#> 1151                                       Breda
#> 1152               Brunyola i Sant Martí Sapresa
#> 1153                         Caldes de Malavella
#> 1154                          Fogars de la Selva
#> 1155                                   Hostalric
#> 1156                           la Cellera de Ter
#> 1157                               Lloret de Mar
#> 1158                                     Maçanes
#> 1159                         Maçanet de la Selva
#> 1160                                        Osor
#> 1161                            Riells i Viabrea
#> 1162                                  Riudarenes
#> 1163                      Riudellots de la Selva
#> 1164                     Sant Feliu de Buixalleu
#> 1165                          Sant Hilari Sacalm
#> 1166               Sant Julià del Llor i Bonmatí
#> 1167                     Santa Coloma de Farners
#> 1168                                        Sils
#> 1169                                    Susqueda
#> 1170                                Tossa de Mar
#> 1171                                    Vidreres
#> 1172                              Vilobí d'Onyar
#> 1173                      Castellar de la Ribera
#> 1174                        Clariana de Cardener
#> 1175                                     Guixers
#> 1176                          la Coma i la Pedra
#> 1177                                  la Molsosa
#> 1178                                     Lladurs
#> 1179                                     Llobera
#> 1180                                       Navès
#> 1181                                        Odèn
#> 1182                                       Olius
#> 1183                          Pinell de Solsonès
#> 1184                                       Pinós
#> 1185                                       Riner
#> 1186                     Sant Llorenç de Morunys
#> 1187                                     Solsona
#> 1188                                   Altafulla
#> 1189                                   Constantí
#> 1190                                    Creixell
#> 1191                                  el Catllar
#> 1192                                   el Morell
#> 1193                              els Pallaresos
#> 1194                                  la Canonja
#> 1195                              la Nou de Gaià
#> 1196                         la Pobla de Mafumet
#> 1197                       la Pobla de Montornès
#> 1198                            la Riera de Gaià
#> 1199                                  la Secuita
#> 1200                                    Perafort
#> 1201                                       Renau
#> 1202                                Roda de Berà
#> 1203                                      Salomó
#> 1204                                       Salou
#> 1205                                   Tarragona
#> 1206                               Torredembarra
#> 1207                            Vespella de Gaià
#> 1208                                   Vila-seca
#> 1209                         Vilallonga del Camp
#> 1210                                       Arnes
#> 1211                                       Batea
#> 1212                                         Bot
#> 1213                                     Caseres
#> 1214                              Corbera d'Ebre
#> 1215                           el Pinell de Brai
#> 1216                                     Gandesa
#> 1217                          Horta de Sant Joan
#> 1218                                la Fatarella
#> 1219                       la Pobla de Massaluca
#> 1220                               Prat de Comte
#> 1221                           Vilalba dels Arcs
#> 1222                                    Agramunt
#> 1223                                   Anglesola
#> 1224                                    Belianes
#> 1225                                    Bellpuig
#> 1226                                 Castellserà
#> 1227                                  Ciutadilla
#> 1228                       els Omells de na Gaia
#> 1229                                     Guimerà
#> 1230                                  la Fuliola
#> 1231                                       Maldà
#> 1232                                       Nalec
#> 1233                                 Ossó de Sió
#> 1234                                    Preixana
#> 1235                         Puigverd d'Agramunt
#> 1236                       Sant Martí de Riucorb
#> 1237                                     Tàrrega
#> 1238                                   Tornabous
#> 1239                      Vallbona de les Monges
#> 1240                                       Verdú
#> 1241                                  Vilagrassa
#> 1242                            Badia del Vallès
#> 1243                          Barberà del Vallès
#> 1244                        Castellar del Vallès
#> 1245                               Castellbisbal
#> 1246                       Cerdanyola del Vallès
#> 1247                                     Gallifa
#> 1248                                  Matadepera
#> 1249                           Montcada i Reixac
#> 1250                    Palau-solità i Plegamans
#> 1251                                     Polinyà
#> 1252                                   Rellinars
#> 1253                                    Ripollet
#> 1254                                        Rubí
#> 1255                                    Sabadell
#> 1256                       Sant Cugat del Vallès
#> 1257                         Sant Llorenç Savall
#> 1258                      Sant Quirze del Vallès
#> 1259                    Santa Perpètua de Mogoda
#> 1260                                   Sentmenat
#> 1261                                    Terrassa
#> 1262                                  Ullastrell
#> 1263                                  Vacarisses
#> 1264                               Viladecavalls
#> 1265                                  Aiguafreda
#> 1266                     Bigues i Riells del Fai
#> 1267                           Caldes de Montbui
#> 1268                                     Campins
#> 1269                                  Canovelles
#> 1270                           Cànoves i Samalús
#> 1271                                    Cardedeu
#> 1272                       el Figueró i Montmany
#> 1273                          Fogars de Montclús
#> 1274                                  Granollers
#> 1275                                      Gualba
#> 1276                        l'Ametlla del Vallès
#> 1277                                  la Garriga
#> 1278                                 la Llagosta
#> 1279                          la Roca del Vallès
#> 1280                   les Franqueses del Vallès
#> 1281                               Lliçà d'Amunt
#> 1282                               Lliçà de Vall
#> 1283                          Llinars del Vallès
#> 1284                                 Martorelles
#> 1285                           Mollet del Vallès
#> 1286                                    Montmeló
#> 1287                        Montornès del Vallès
#> 1288                                    Montseny
#> 1289                           Parets del Vallès
#> 1290                    Sant Antoni de Vilamajor
#> 1291                                 Sant Celoni
#> 1292                 Sant Esteve de Palautordera
#> 1293                       Sant Feliu de Codines
#> 1294                  Sant Fost de Campsentelles
#> 1295                      Sant Pere de Vilamajor
#> 1296                    Santa Eulàlia de Ronçana
#> 1297                  Santa Maria de Martorelles
#> 1298                 Santa Maria de Palautordera
#> 1299                                  Tagamanent
#> 1300                                Vallgorguina
#> 1301                                 Vallromanes
#> 1302                            Vilalba Sasserra
#> 1303                         Vilanova del Vallès
#> 1304                                    València
#> 1305                            Alcalà de Xivert
#> 1306                                   Benicarló
#> 1307                                       Càlig
#> 1308                               Canet lo Roig
#> 1309                           Castell de Cabres
#> 1310                        Cervera del Maestrat
#> 1311                                     la Jana
#> 1312                       la Pobla de Benifassà
#> 1313                               la Salzadella
#> 1314                                   Peníscola
#> 1315                                     Rossell
#> 1316                                  Sant Jordi
#> 1317                                  Sant Mateu
#> 1318                          Sant Rafel del Riu
#> 1319                   Santa Magdalena de Polpís
#> 1320                                   Traiguera
#> 1321                                     Vinaròs
#> 1322                                        Xert
#> 1323                        Guardamar del Segura
#> 1324                                  Crevillent
#> 1325                                         Elx
#> 1326                                  Santa Pola
#> 1327                      Albalat dels Tarongers
#> 1328                        Alfara de la Baronia
#> 1329                           Algar de Palància
#> 1330                            Algímia d'Alfara
#> 1331                                   Benavites
#> 1332                      Benifairó de les Valls
#> 1333                        Canet d'en Berenguer
#> 1334                                   Estivella
#> 1335                                       Faura
#> 1336                                       Gilet
#> 1337                                      Petrés
#> 1338                          Quart de les Valls
#> 1339                                    Quartell
#> 1340                                      Sagunt
#> 1341                                      Segart
#> 1342                               Torres Torres
#> 1343                                  Benaguasil
#> 1344                                   Benissanó
#> 1345                                      Bétera
#> 1346                                     Casinos
#> 1347                                    l'Eliana
#> 1348                        la Pobla de Vallbona
#> 1349                                      Llíria
#> 1350                                     Nàquera
#> 1351                                      Olocau
#> 1352                          Riba-roja de Túria
#> 1353                                       Serra
#> 1354                                 Vilamarxant
#> 1355                                       Agres
#> 1356                                    Alcoleja
#> 1357                                    Alcosser
#> 1358                                    Alfafara
#> 1359                                   Almudaina
#> 1360                                     Balones
#> 1361                                     Benasau
#> 1362                                   Beniarrés
#> 1363                                   Benilloba
#> 1364                                    Benillup
#> 1365                                 Benimarfull
#> 1366                                  Benimassot
#> 1367                                  Cocentaina
#> 1368                                      Fageca
#> 1369                                     Famorca
#> 1370                                     Gaianes
#> 1371                                       Gorga
#> 1372                          l'Alqueria d'Asnar
#> 1373                                      l'Orxa
#> 1374                                     Millena
#> 1375                                Muro d'Alcoi
#> 1376                                      Planes
#> 1377                               Quatretondeta
#> 1378                                      Tollos
#> 1379                        el Fondó de les Neus
#> 1380                        el Fondó dels Frares
#> 1381                                    el Pinós
#> 1382                                  l'Alguenya
#> 1383                                   la Romana
#> 1384                                     Monòver
#> 1385                                     Novelda
#> 1386                                      Petrer
#> 1387                                 Castellfort
#> 1388                                  Cinctorres
#> 1389                                  el Forcall
#> 1390                                     Herbers
#> 1391                          la Mata de Morella
#> 1392                                la Todolella
#> 1393                                     Morella
#> 1394                                   Palanques
#> 1395                          Portell de Morella
#> 1396                                      Sorita
#> 1397                                   Vallibona
#> 1398                                  Vilafranca
#> 1399                                    Villores
#> 1400                                       Agost
#> 1401                                      Aigües
#> 1402                                     Alacant
#> 1403                                       Busot
#> 1404                                 el Campello
#> 1405                     la Torre de les Maçanes
#> 1406                                    Mutxamel
#> 1407                         Sant Joan d'Alacant
#> 1408                     Sant Vicent del Raspeig
#> 1409                                      Xixona
#> 1410                                      Costur
#> 1411                                  Figueroles
#> 1412                                    l'Alcora
#> 1413                                  les Useres
#> 1414                                     Llucena
#> 1415                     Vistabella del Maestrat
#> 1416                                       Xodos
#> 1417                                       Alcoi
#> 1418                         Banyeres de Mariola
#> 1419                                  Benifallim
#> 1420                                    Castalla
#> 1421                                         Ibi
#> 1422                                        Onil
#> 1423                                   Penàguila
#> 1424                                        Tibi
#> 1425                                  Albocàsser
#> 1426                           Ares del Maestrat
#> 1427                       Atzeneta del Maestrat
#> 1428                                   Benafigos
#> 1429                                    Benassal
#> 1430                                        Catí
#> 1431                                       Culla
#> 1432                               la Serratella
#> 1433                        la Torre d'en Besora
#> 1434                                       Tírig
#> 1435                              Vilar de Canes
#> 1436                                   Beneixama
#> 1437                                        Biar
#> 1438                            el Camp de Mirra
#> 1439                                  la Canyada
#> 1440                        Albalat dels Sorells
#> 1441                                    Alboraia
#> 1442                                    Albuixec
#> 1443                        Alfara del Patriarca
#> 1444                                   Almàssera
#> 1445                        Bonrepòs i Mirambell
#> 1446                                   Burjassot
#> 1447                      el Puig de Santa Maria
#> 1448                                   Emperador
#> 1449                                       Foios
#> 1450                                     Godella
#> 1451                         la Pobla de Farnals
#> 1452                                Massalfassar
#> 1453                                Massamagrell
#> 1454                                     Meliana
#> 1455                                    Montcada
#> 1456                                     Museros
#> 1457                                     Paterna
#> 1458                                       Puçol
#> 1459                                 Rafelbunyol
#> 1460                                    Rocafort
#> 1461                           Tavernes Blanques
#> 1462                                    Vinalesa
#> 1463                                     Alaquàs
#> 1464                                       Albal
#> 1465                                    Alcàsser
#> 1466                                      Aldaia
#> 1467                                     Alfafar
#> 1468                                  Benetússer
#> 1469                                 Beniparrell
#> 1470                                   Catarroja
#> 1471                        Llocnou de la Corona
#> 1472                                     Manises
#> 1473                                  Massanassa
#> 1474                                     Mislata
#> 1475                                    Paiporta
#> 1476                                     Picanya
#> 1477                                   Picassent
#> 1478                             Quart de Poblet
#> 1479                                      Sedaví
#> 1480                                       Silla
#> 1481                                     Torrent
#> 1482                                   Xirivella
#> 1483                                     Barxeta
#> 1484                                      Canals
#> 1485                                       Cerdà
#> 1486                                  el Genovés
#> 1487                                    Estubeny
#> 1488                       l'Alcúdia de Crespins
#> 1489                       la Font de la Figuera
#> 1490                     la Granja de la Costera
#> 1491                           la Llosa de Ranes
#> 1492                            Llanera de Ranes
#> 1493                       Llocnou d'en Fenollet
#> 1494                                     Moixent
#> 1495                                     Montesa
#> 1496                                     Novetlè
#> 1497                            Rotglà i Corberà
#> 1498                                    Torrella
#> 1499                                     Vallada
#> 1500                                      Vallés
#> 1501                                      Xàtiva
#> 1502                                    Alcalalí
#> 1503                                  Beniarbeig
#> 1504                                  Benidoleig
#> 1505                                  Benigembla
#> 1506                                    Benimeli
#> 1507                                     Benissa
#> 1508                                        Calp
#> 1509                         Castell de Castells
#> 1510                                       Dénia
#> 1511                 el Poble Nou de Benitatxell
#> 1512                          el Ràfol d'Almúnia
#> 1513                                   el Verger
#> 1514                                 els Poblets
#> 1515                              Gata de Gorgos
#> 1516                                   l'Atzúbia
#> 1517                            la Vall d'Alcalà
#> 1518                               la Vall d'Ebo
#> 1519                        la Vall de Gallinera
#> 1520                           la Vall de Laguar
#> 1521                                      Llíber
#> 1522                                       Murla
#> 1523                                      Ondara
#> 1524                                        Orba
#> 1525                                     Parcent
#> 1526                                   Pedreguer
#> 1527                                        Pego
#> 1528                                       Sagra
#> 1529                         Sanet i els Negrals
#> 1530                                      Senija
#> 1531                                     Teulada
#> 1532                                      Tormos
#> 1533                                       Xàbia
#> 1534                                        Xaló
#> 1535                                       Altea
#> 1536                                    Beniardà
#> 1537                                    Benidorm
#> 1538                                    Benifato
#> 1539                                 Benimantell
#> 1540                                     Bolulla
#> 1541                         Callosa d'en Sarrià
#> 1542                                   Confrides
#> 1543                     el Castell de Guadalest
#> 1544                                   Finestrat
#> 1545                              l'Alfàs del Pi
#> 1546                                    la Nucia
#> 1547                              la Vila Joiosa
#> 1548                                      Orxeta
#> 1549                                       Polop
#> 1550                                      Relleu
#> 1551                                       Sella
#> 1552                                     Tàrbena
#> 1553                                   Almassora
#> 1554                                  Benicàssim
#> 1555                                     Benlloc
#> 1556                                     Borriol
#> 1557                                     Cabanes
#> 1558                        Castelló de la Plana
#> 1559                            la Pobla Tornesa
#> 1560                      la Serra d'en Galceran
#> 1561                       la Torre d'en Doménec
#> 1562                              la Vall d'Alba
#> 1563                        les Coves de Vinromà
#> 1564                                      Orpesa
#> 1565                           Sant Joan de Moró
#> 1566                                 Torreblanca
#> 1567                                   Vilafamés
#> 1568                          Vilanova d'Alcolea
#> 1569                                         Aín
#> 1570                                    Almenara
#> 1571                                      Artana
#> 1572                                       Betxí
#> 1573                                    Borriana
#> 1574                                      Eslida
#> 1575                                 Fondeguilla
#> 1576                            l'Alcúdia de Veo
#> 1577                                    la Llosa
#> 1578                              la Vall d'Uixó
#> 1579                                la Vilavella
#> 1580                               les Alqueries
#> 1581                                     Moncofa
#> 1582                                       Nules
#> 1583                                        Onda
#> 1584                                  Ribesalbes
#> 1585                                       Suera
#> 1586                                       Tales
#> 1587                                   Vila-real
#> 1588                                      Xilxes
#> 1589                                     Alberic
#> 1590                         Alcàntera de Xúquer
#> 1591                                      Alfarb
#> 1592                                    Algemesí
#> 1593                                     Alginet
#> 1594                                      Alzira
#> 1595                                     Antella
#> 1596                                   Beneixida
#> 1597                                    Benifaió
#> 1598                                    Benimodo
#> 1599                                  Benimuslem
#> 1600                                  Carcaixent
#> 1601                                      Càrcer
#> 1602                                      Carlet
#> 1603                                    Castelló
#> 1604                                     Catadau
#> 1605                                       Cotes
#> 1606                                     Gavarda
#> 1607                                  Guadassuar
#> 1608                                   l'Alcúdia
#> 1609                                     l'Énova
#> 1610                             la Pobla Llarga
#> 1611                                     Llombai
#> 1612                                      Manuel
#> 1613                                  Massalavés
#> 1614                                     Montroi
#> 1615                                  Montserrat
#> 1616                                 Rafelguaraf
#> 1617                                        Real
#> 1618                                 Sant Joanet
#> 1619                                     Sellent
#> 1620                                     Senyera
#> 1621                                  Sumacàrcer
#> 1622                                       Torís
#> 1623                        Albalat de la Ribera
#> 1624                                  Almussafes
#> 1625                          Benicull de Xúquer
#> 1626                                     Corbera
#> 1627                                     Cullera
#> 1628                                      Favara
#> 1629                                   Fortaleny
#> 1630                                      Llaurí
#> 1631                           Polinyà de Xúquer
#> 1632                                       Riola
#> 1633                                     Sollana
#> 1634                                       Sueca
#> 1635                                        Ador
#> 1636                                     Alfauir
#> 1637                                    Almiserà
#> 1638                                    Almoines
#> 1639                                        Barx
#> 1640                                 Bellreguard
#> 1641                                    Beniarjó
#> 1642                   Benifairó de la Valldigna
#> 1643                                     Beniflà
#> 1644                                  Benirredrà
#> 1645                 Castellonet de la Conquesta
#> 1646                                      Daimús
#> 1647                           el Real de Gandia
#> 1648                                      Gandia
#> 1649                       Guardamar de la Safor
#> 1650                   l'Alqueria de la Comtessa
#> 1651                         la Font d'en Carròs
#> 1652                      Llocnou de Sant Jeroni
#> 1653                                     Miramar
#> 1654                                       Oliva
#> 1655                             Palma de Gandia
#> 1656                                     Palmera
#> 1657                                       Piles
#> 1658                                     Potries
#> 1659                                  Rafelcofer
#> 1660                                      Ròtova
#> 1661                       Simat de la Valldigna
#> 1662                    Tavernes de la Valldigna
#> 1663                                  Vilallonga
#> 1664                                      Xeraco
#> 1665                                      Xeresa
#> 1666                                    Agullent
#> 1667                           Aielo de Malferit
#> 1668                              Aielo de Rugat
#> 1669                                     Albaida
#> 1670                                   Alfarrasí
#> 1671                          Atzeneta d'Albaida
#> 1672                                     Bèlgida
#> 1673                                      Bellús
#> 1674                                   Beniatjar
#> 1675                                   Benicolet
#> 1676                                   Benigànim
#> 1677                                   Benissoda
#> 1678                                  Benissuera
#> 1679                                   Bocairent
#> 1680                                      Bufali
#> 1681                                   Carrícola
#> 1682                           Castelló de Rugat
#> 1683                                  el Palomar
#> 1684                           el Ràfol de Salem
#> 1685                     Fontanars dels Alforins
#> 1686                               Guadasséquies
#> 1687                                   l'Olleria
#> 1688                            la Pobla del Duc
#> 1689                                    Llutxent
#> 1690                                 Montaverner
#> 1691                                 Montitxelvo
#> 1692                                   Ontinyent
#> 1693                                        Otos
#> 1694                                       Pinet
#> 1695                                 Quatretonda
#> 1696                                       Rugat
#> 1697                                       Salem
#> 1698                                     Sempere
#> 1699                                   Terrateig
#> 1700                                    l'Alguer
#>                                                   name
#> 1                                              Salardú
#> 2                                         Arres de Jos
#> 3                                               Bausen
#> 4                                              Bossòst
#> 5                                              Canejan
#> 6                                            Es Bòrdes
#> 7                                                  Les
#> 8                                               Vielha
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
#> 38                                          Ayguatébia
#> 39                                          Arboussols
#> 40                                             Campôme
#> 41                                         Canaveilles
#> 42                                             Casteil
#> 43                                             Catllar
#> 44                                 Caudiès-de-Conflent
#> 45                                               Clara
#> 46                                             Codalet
#> 47                                               Conat
#> 48                               Corneilla-de-Conflent
#> 49                                              Llonat
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
#> 77                                                 Ria
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
#> 104                                        Les Cabanes
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
#> 182                                         La Trinité
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
#> 242                 Torrevelilla / la Torre de Vilella
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
#> 258                                  Peralta de la Sal
#> 259                              San Esteban de Litera
#> 260                                             Azanuy
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
#> 278                                   Ràfels / Ráfales
#> 279                      Torre de Arcas / Torredarques
#> 280                      Valderrobres / Vall de Roures
#> 281                         Valjunquera / Valljunquera
#> 282                            Arén / Areny de Noguera
#> 283                              Benabarre / Benavarri
#> 284                                            Beranuy
#> 285                                            Bonansa
#> 286                                         Castigaleu
#> 287                 Estopiñán del Castillo / Estopanyà
#> 288                                  La Puebla de Roda
#> 289                              Lascuarre / Lasquarri
#> 290                              Laspaúles / Les Paüls
#> 291                                Cajigar / Queixigar
#> 292                                Montanuy / Montanui
#> 293           Puente de Montañana / Pont de Montanyana
#> 294                                            Sopeira
#> 295                                      Tolva / Tolba
#> 296                                    Torre la Ribera
#> 297                                            Viacamp
#> 298                                            Eivissa
#> 299                            Sant Antoni de Portmany
#> 300                              Sant Joan de Labritja
#> 301                            Sant Josep de sa Talaia
#> 302                              Santa Eulària des Riu
#> 303                        Sant Francesc de Formentera
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
#> 348                                        sa Cabaneta
#> 349                                           sa Pobla
#> 350                               Santa Maria del Camí
#> 351                                              Selva
#> 352                                            Andratx
#> 353                                        Banyalbufar
#> 354                                            Bunyola
#> 355                                             Calvià
#> 356                                               Deià
#> 357                                               Lluc
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
#> 393                                 Boadella d'Empordà
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
#> 420                                            Masarac
#> 421                                 Mollet de Peralada
#> 422                                             Navata
#> 423                                              Ordis
#> 424                                      Santa Eulàlia
#> 425                                    Palau-saverdera
#> 426                                                Pau
#> 427                                              Marzà
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
#> 441                                          Camallera
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
#> 456                                         Avinyó Nou
#> 457                                          la Gornal
#> 458                                           la Múnia
#> 459                                 el Pla del Penedès
#> 460                                          Font-rubí
#> 461                                             Gelida
#> 462                                         la Granada
#> 463                                       les Cabanyes
#> 464                               Sant Joan de Mediona
#> 465                             Sant Miquel d'Olèrdola
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
#> 478                                   Sant Pau d'Ordal
#> 479                                              Lavit
#> 480                                  Torrelles de Foix
#> 481                             Vilafranca del Penedès
#> 482                                 Vilobí del Penedès
#> 483                                               Alàs
#> 484                                           Arsèguel
#> 485                                           Bassella
#> 486                                               Cabó
#> 487                                           Ansovell
#> 488                                      Coll de Nargó
#> 489                                                Bar
#> 490                                          Estamariu
#> 491                                             Fígols
#> 492                                            Tuixent
#> 493                                    la Seu d'Urgell
#> 494                               Sorribes de la Vansa
#> 495                                     Noves de Segre
#> 496                                           Anserall
#> 497                                         Montferrer
#> 498                                             Oliana
#> 499                                            Organyà
#> 500                                           Peramola
#> 501                                el Pla de Sant Tirs
#> 502                                   el Pont de Suert
#> 503                                           Barruera
#> 504                                           Vilaller
#> 505                                          Argençola
#> 506                                           Bellprat
#> 507                                          Canaletes
#> 508                                              Calaf
#> 509                                            Dusfort
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
#> 544                                          el Borràs
#> 545                             Castellfollit del Boix
#> 546                                        Castellgalí
#> 547                                Castellnou de Bages
#> 548                                el Pont de Vilomara
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
#> 592                                          Vandellòs
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
#> 613                                            Calonge
#> 614                                       Platja d'Aro
#> 615                                           Colomers
#> 616                                              Corçà
#> 617                            Sant Sadurní de l'Heura
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
#> 645                                          Vulpellac
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
#> 682                            la Joncosa del Montmell
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
#> 703                                            Llinars
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
#> 725                                          Serrateix
#> 726                                                Alp
#> 727                                Bellver de Cerdanya
#> 728                                             Bolvir
#> 729                                                Das
#> 730                                    el Vilar d'Urtx
#> 731                                                Ger
#> 732                                  Guils de Cerdanya
#> 733                                                All
#> 734                                   Lles de Cerdanya
#> 735                                             Llívia
#> 736                                           Meranges
#> 737                                           Martinet
#> 738                                              Prats
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
#> 751                                          Passanant
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
#> 764                                            Vimbodí
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
#> 789                                      La Granadella
#> 790                               la Pobla de Cérvoles
#> 791                                les Borges Blanques
#> 792                                           Puiggròs
#> 793                                             Tarrés
#> 794                                            Vinaixa
#> 795                                         Argelaguer
#> 796                                             Besalú
#> 797                                              Beuda
#> 798                           Castellfollit de la Roca
#> 799                               Sant Esteve d'en Bas
#> 800                              l'Hostalnou de Bianya
#> 801                              les Planes d'Hostoles
#> 802                                         les Preses
#> 803                                    Maià de Montcal
#> 804                                             Mieres
#> 805                                           Montagut
#> 806                                               Olot
#> 807                                           Riudaura
#> 808                                   Sales de Llierca
#> 809                             Sant Esteve de Llémena
#> 810                            Sant Feliu de Pallerols
#> 811                                             Juïnyà
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
#> 831                                            Medinyà
#> 832                                              Quart
#> 833                                               Salt
#> 834                                  Sant Andreu Salou
#> 835                                       Sant Gregori
#> 836                                Sant Joan de Mollet
#> 837                                Sant Jordi Desvalls
#> 838                                Sant Julià de Ramis
#> 839                              Sant Martí de Llémena
#> 840                                    Sant Martí Vell
#> 841                                      Sarrià de Ter
#> 842                                        Vilablareix
#> 843                                         Viladasens
#> 844                                             Alpens
#> 845                        Santa Eulàlia de Puig-oriol
#> 846                                              Olost
#> 847                                             Oristà
#> 848                                           Perafita
#> 849                                  Prats de Lluçanès
#> 850                                Sant Martí d'Albars
#> 851                                          Sobremunt
#> 852                                             Alella
#> 853                                      Arenys de Mar
#> 854                                     Arenys de Munt
#> 855                                          Argentona
#> 856                                     Cabrera de Mar
#> 857                                            Cabrils
#> 858                                    Caldes d'Estrac
#> 859                                            Calella
#> 860                                       Canet de Mar
#> 861                                            Dosrius
#> 862                                          el Masnou
#> 863                                     Malgrat de Mar
#> 864                                             Mataró
#> 865                                            Montgat
#> 866                                             Òrrius
#> 867                                          Palafolls
#> 868                                      Pineda de Mar
#> 869                                     Premià de Dalt
#> 870                                      Premià de Mar
#> 871                          Sant Andreu de Llavaneres
#> 872                            Sant Cebrià de Vallalta
#> 873                             Sant Iscle de Vallalta
#> 874                                    Sant Pol de Mar
#> 875                             Sant Vicenç de Montalt
#> 876                                      Santa Susanna
#> 877                                               Teià
#> 878                                              Tiana
#> 879                                            Tordera
#> 880                                   Vilassar de Dalt
#> 881                                    Vilassar de Mar
#> 882                                            Calders
#> 883                                         Castellcir
#> 884                                      Castellterçol
#> 885                                        Collsuspina
#> 886                                            Granera
#> 887                                           l'Estany
#> 888                                               Moià
#> 889                               Monistrol de Calders
#> 890                                 Sant Quirze Safaja
#> 891                                  Santa Maria d'Oló
#> 892                                            Alcanar
#> 893                                            Amposta
#> 894                                          Freginals
#> 895                                             Godall
#> 896                                          la Galera
#> 897                                          la Ràpita
#> 898                                           la Sénia
#> 899                                   Mas de Barberans
#> 900                                        Masdenverge
#> 901                                Sant Jaume d'Enveja
#> 902                                      Santa Bàrbara
#> 903                                          Ulldecona
#> 904                                               Àger
#> 905                                             Albesa
#> 906                                            Algerri
#> 907                                   Alòs de Balaguer
#> 908                                    Artesa de Segre
#> 909                                           Balaguer
#> 910                                 Bellcaire d'Urgell
#> 911                                  Bellmunt d'Urgell
#> 912                                         Cabanabona
#> 913                                           Camarasa
#> 914                               Castelló de Farfanya
#> 915                                            Cubells
#> 916                                           Foradada
#> 917                                   Ivars de Noguera
#> 918                                            Gualter
#> 919                                   la Sentiu de Sió
#> 920                                      les Avellanes
#> 921                                         Menàrguens
#> 922                                            Montgai
#> 923                                             Oliola
#> 924                                     Os de Balaguer
#> 925                                           Penelles
#> 926                                              Ponts
#> 927                                           Preixens
#> 928                                            Térmens
#> 929                                            Tiurana
#> 930                                         Torrelameu
#> 931                             Vallfogona de Balaguer
#> 932                                Vilanova de l'Aguda
#> 933                                   Vilanova de Meià
#> 934                           els Hostalets de Balenyà
#> 935                                        Calldetenes
#> 936                                          Centelles
#> 937                                           el Brull
#> 938                                         Espinelves
#> 939                                        Folgueroles
#> 940                                               Gurb
#> 941                                         l'Esquirol
#> 942                                 les Masies de Roda
#> 943                             les Masies de Voltregà
#> 944                                              Malla
#> 945                                            Manlleu
#> 946                                         Montesquiu
#> 947                                         Muntanyola
#> 948                                       Can Branques
#> 949                                        Roda de Ter
#> 950                                              Rupit
#> 951                                             l'Alou
#> 952                             Sant Bartomeu del Grau
#> 953                               Sant Boi de Lluçanès
#> 954                           Sant Hipòlit de Voltregà
#> 955                            Sant Julià de Vilatorta
#> 956                                           l'Abella
#> 957                               Sant Pere de Torelló
#> 958                              Sant Quirze de Besora
#> 959                            Sant Sadurní d'Osormort
#> 960                             Sant Vicenç de Torelló
#> 961                          Santa Cecília de Voltregà
#> 962                             Santa Eugènia de Berga
#> 963                         Santa Eulàlia de Riuprimer
#> 964                              Santa Maria de Besora
#> 965                                               Seva
#> 966                                               Sora
#> 967                                           Taradell
#> 968                                         Tavèrnoles
#> 969                                           Tavertet
#> 970                                               Tona
#> 971                                            Torelló
#> 972                                                Vic
#> 973                                              Vidrà
#> 974                                           Viladrau
#> 975                                    Vilanova de Sau
#> 976                                 Abella de la Conca
#> 977                                 Guàrdia de Noguera
#> 978                                el Pont de Claverol
#> 979                                  Gavet de la Conca
#> 980                                              Isona
#> 981                                  la Pobla de Segur
#> 982                               la Torre de Cabdella
#> 983                                           Llimiana
#> 984                                   Salàs de Pallars
#> 985                            Sant Esteve de la Sarga
#> 986                                 Sarroca de Bellera
#> 987                                          Senterada
#> 988                                             Talarn
#> 989                                              Tremp
#> 990                                              Alins
#> 991                                    València d'Àneu
#> 992                                    Gerri de la Sal
#> 993                                              Espot
#> 994                                     Esterri d'Àneu
#> 995                                  Esterri de Cardós
#> 996                                               Burg
#> 997                                la Guingueta d'Àneu
#> 998                                           Lladorre
#> 999                                           Llavorsí
#> 1000                                             Rialp
#> 1001                                           Vilamur
#> 1002                                              Sort
#> 1003                                            Tírvia
#> 1004                                  Ribera de Cardós
#> 1005                                           Barbens
#> 1006                                Bell-lloc d'Urgell
#> 1007                                           Bellvís
#> 1008                               Castellnou de Seana
#> 1009                              el Palau d'Anglesola
#> 1010                                           el Poal
#> 1011                                        Fondarella
#> 1012                                            Golmés
#> 1013                                    Ivars d'Urgell
#> 1014                                           Linyola
#> 1015                                         Miralcamp
#> 1016                                        Mollerussa
#> 1017                                           Sidamon
#> 1018                                       Torregrossa
#> 1019                                         Vila-sana
#> 1020                              Vilanova de Bellpuig
#> 1021                                          Banyoles
#> 1022                                             Camós
#> 1023                                Cornellà del Terri
#> 1024                                           Crespià
#> 1025                                         Esponellà
#> 1026                                       Fontcoberta
#> 1027                                 Palol de Revardit
#> 1028                                              Mata
#> 1029                          Sant Miquel de Campmajor
#> 1030                                           Serinyà
#> 1031                                        Vilademuls
#> 1032                              Bellmunt del Priorat
#> 1033                                           Cabacés
#> 1034                                          Capçanes
#> 1035                            Cornudella de Montsant
#> 1036                                          el Lloar
#> 1037                                        el Masroig
#> 1038                                          el Molar
#> 1039                                      els Guiamets
#> 1040                                            Falset
#> 1041                                        Gratallops
#> 1042                             la Bisbal de Montsant
#> 1043                                        la Figuera
#> 1044                             la Morera de Montsant
#> 1045                           la Torre de Fontaubella
#> 1046                                   la Vilella Alta
#> 1047                                  la Vilella Baixa
#> 1048                                             Marçà
#> 1049                                          Margalef
#> 1050                                          Poboleda
#> 1051                                           Porrera
#> 1052                             Pradell de la Teixeta
#> 1053                               Torroja del Priorat
#> 1054                                       Ulldemolins
#> 1055                                              Ascó
#> 1056                                        Benissanet
#> 1057                                              Flix
#> 1058                                            Garcia
#> 1059                                          Ginestar
#> 1060                                   la Palma d'Ebre
#> 1061                            la Torre de l'Espanyol
#> 1062                                           Miravet
#> 1063                                       Móra d'Ebre
#> 1064                                      Móra la Nova
#> 1065                                          Rasquera
#> 1066                                  Riba-roja d'Ebre
#> 1067                                           Tivissa
#> 1068                                           Vinebre
#> 1069                                       Campdevànol
#> 1070                                         Campelles
#> 1071                                         Camprodon
#> 1072                                           Gombrèn
#> 1073                                       les Llosses
#> 1074                                           Llanars
#> 1075                                             Molló
#> 1076                                            Ogassa
#> 1077                                          Pardines
#> 1078                                          Planoles
#> 1079                                          Queralbs
#> 1080                                   Ribes de Freser
#> 1081                                            Ripoll
#> 1082                        Sant Joan de les Abadesses
#> 1083                              Sant Pau de Segúries
#> 1084                                          Setcases
#> 1085                                             Toses
#> 1086                            Vallfogona de Ripollès
#> 1087                                 Vilallonga de Ter
#> 1088                                            Biosca
#> 1089                                           Cervera
#> 1090                                    les Pallargues
#> 1091                                           Estaràs
#> 1092                                       Granyanella
#> 1093                               Granyena de Segarra
#> 1094                                          Guissona
#> 1095                                            Ivorra
#> 1096                                        les Oluges
#> 1097                                        Massoteres
#> 1098                               Montoliu de Segarra
#> 1099                              Montornès de Segarra
#> 1100                            Sant Antolí i Vilanova
#> 1101                                           Sanaüja
#> 1102                            Sant Guim de Freixenet
#> 1103                             Sant Guim de la Plana
#> 1104                                        Sant Ramon
#> 1105                                          Talavera
#> 1106                                Tarroja de Segarra
#> 1107                                              Torà
#> 1108                                         Torrefeta
#> 1109                                            Aitona
#> 1110                                        Albatàrrec
#> 1111                                            Alcanó
#> 1112                                          Alcarràs
#> 1113                                         Alcoletge
#> 1114                                          Alfarràs
#> 1115                                             Alfés
#> 1116                                          Alguaire
#> 1117                                        Almacelles
#> 1118                                          Almatret
#> 1119                                           Almenar
#> 1120                                           Alpicat
#> 1121                                  Artesa de Lleida
#> 1122                                              Aspa
#> 1123                                Benavent de Segrià
#> 1124                                           Corbins
#> 1125                                        els Alamús
#> 1126                                         Gimenells
#> 1127                                la Granja d'Escarp
#> 1128                                       la Portella
#> 1129                                        Llardecans
#> 1130                                            Lleida
#> 1131                                            Maials
#> 1132                                      Massalcoreig
#> 1133                                Montoliu de Lleida
#> 1134                                Puigverd de Lleida
#> 1135                                          Rosselló
#> 1136                                 Sarroca de Lleida
#> 1137                                             Seròs
#> 1138                                             Soses
#> 1139                                          Sudanell
#> 1140                                            Sunyer
#> 1141                                      Torre-serona
#> 1142                                       Torrebesses
#> 1143                                      Torrefarrera
#> 1144                                   Torres de Segre
#> 1145                              Vilanova de la Barca
#> 1146                                Vilanova de Segrià
#> 1147                                              Amer
#> 1148                                            Anglès
#> 1149                                          Arbúcies
#> 1150                                            Blanes
#> 1151                                             Breda
#> 1152                                          Brunyola
#> 1153                               Caldes de Malavella
#> 1154                                Fogars de la Selva
#> 1155                                         Hostalric
#> 1156                                 la Cellera de Ter
#> 1157                                     Lloret de Mar
#> 1158                                          Massanes
#> 1159                               Maçanet de la Selva
#> 1160                                              Osor
#> 1161                                            Riells
#> 1162                                        Riudarenes
#> 1163                            Riudellots de la Selva
#> 1164                           Sant Feliu de Buixalleu
#> 1165                                Sant Hilari Sacalm
#> 1166                                           Bonmatí
#> 1167                           Santa Coloma de Farners
#> 1168                                              Sils
#> 1169                                 Sant Martí Sacalm
#> 1170                                      Tossa de Mar
#> 1171                                          Vidreres
#> 1172                                    Vilobí d'Onyar
#> 1173                            Castellar de la Ribera
#> 1174                              Clariana de Cardener
#> 1175                             la Casa Nova de Valls
#> 1176                                           la Coma
#> 1177                                        la Molsosa
#> 1178                                           Lladurs
#> 1179                                           Llobera
#> 1180                                             Navès
#> 1181                                          Cambrils
#> 1182                                el Pi de Sant Just
#> 1183                                      Sant Climenç
#> 1184                                             Pinós
#> 1185                                        el Miracle
#> 1186                           Sant Llorenç de Morunys
#> 1187                                           Solsona
#> 1188                                         Altafulla
#> 1189                                         Constantí
#> 1190                                          Creixell
#> 1191                                        el Catllar
#> 1192                                         el Morell
#> 1193                                    els Pallaresos
#> 1194                                        la Canonja
#> 1195                                    la Nou de Gaià
#> 1196                               la Pobla de Mafumet
#> 1197                             la Pobla de Montornès
#> 1198                                  la Riera de Gaià
#> 1199                                        la Secuita
#> 1200                                          Perafort
#> 1201                                             Renau
#> 1202                                      Roda de Berà
#> 1203                                            Salomó
#> 1204                                             Salou
#> 1205                                         Tarragona
#> 1206                                     Torredembarra
#> 1207                                  Vespella de Gaià
#> 1208                                         Vila-seca
#> 1209                               Vilallonga del Camp
#> 1210                                             Arnes
#> 1211                                             Batea
#> 1212                                               Bot
#> 1213                                           Caseres
#> 1214                                    Corbera d'Ebre
#> 1215                                 el Pinell de Brai
#> 1216                                           Gandesa
#> 1217                                Horta de Sant Joan
#> 1218                                      la Fatarella
#> 1219                             la Pobla de Massaluca
#> 1220                                     Prat de Comte
#> 1221                                 Vilalba dels Arcs
#> 1222                                          Agramunt
#> 1223                                         Anglesola
#> 1224                                          Belianes
#> 1225                                          Bellpuig
#> 1226                                       Castellserà
#> 1227                                        Ciutadilla
#> 1228                             els Omells de na Gaia
#> 1229                                           Guimerà
#> 1230                                        la Fuliola
#> 1231                                             Maldà
#> 1232                                             Nalec
#> 1233                                       Ossó de Sió
#> 1234                                          Preixana
#> 1235                               Puigverd d'Agramunt
#> 1236                               Sant Martí de Maldà
#> 1237                                           Tàrrega
#> 1238                                         Tornabous
#> 1239                            Vallbona de les Monges
#> 1240                                             Verdú
#> 1241                                        Vilagrassa
#> 1242                                  Badia del Vallès
#> 1243                                Barberà del Vallès
#> 1244                              Castellar del Vallès
#> 1245                                     Castellbisbal
#> 1246                             Cerdanyola del Vallès
#> 1247                                           Gallifa
#> 1248                                        Matadepera
#> 1249                                 Montcada i Reixac
#> 1250                          Palau-solità i Plegamans
#> 1251                                           Polinyà
#> 1252                                         Rellinars
#> 1253                                          Ripollet
#> 1254                                              Rubí
#> 1255                                          Sabadell
#> 1256                             Sant Cugat del Vallès
#> 1257                               Sant Llorenç Savall
#> 1258                            Sant Quirze del Vallès
#> 1259                          Santa Perpètua de Mogoda
#> 1260                                         Sentmenat
#> 1261                                          Terrassa
#> 1262                                        Ullastrell
#> 1263                                        Vacarisses
#> 1264                                     Viladecavalls
#> 1265                                        Aiguafreda
#> 1266                                            Bigues
#> 1267                                 Caldes de Montbui
#> 1268                                           Campins
#> 1269                                     Barriada Nova
#> 1270                                           Cànoves
#> 1271                                          Cardedeu
#> 1272                                         el Figaró
#> 1273                                       Mosqueroles
#> 1274                                        Granollers
#> 1275                                            Gualba
#> 1276                              l'Ametlla del Vallès
#> 1277                                        la Garriga
#> 1278                                       la Llagosta
#> 1279                                la Roca del Vallès
#> 1280                                     Corró d'Avall
#> 1281                                     Lliçà d'Amunt
#> 1282                                     Lliçà de Vall
#> 1283                                Llinars del Vallès
#> 1284                                       Martorelles
#> 1285                                 Mollet del Vallès
#> 1286                                          Montmeló
#> 1287                              Montornès del Vallès
#> 1288                                          Montseny
#> 1289                                 Parets del Vallès
#> 1290                          Sant Antoni de Vilamajor
#> 1291                                       Sant Celoni
#> 1292                       Sant Esteve de Palautordera
#> 1293                             Sant Feliu de Codines
#> 1294                        Sant Fost de Campsentelles
#> 1295                            Sant Pere de Vilamajor
#> 1296                                        la Sagrera
#> 1297                        Santa Maria de Martorelles
#> 1298                       Santa Maria de Palautordera
#> 1299                                        Tagamanent
#> 1300                                      Vallgorguina
#> 1301                                       Vallromanes
#> 1302                                  Vilalba Sasserra
#> 1303                               Vilanova del Vallès
#> 1304                                          València
#> 1305                                  Alcalà de Xivert
#> 1306                                         Benicarló
#> 1307                                             Càlig
#> 1308                                     Canet lo Roig
#> 1309                                 Castell de Cabres
#> 1310                               Cervera del Maestre
#> 1311                                           la Jana
#> 1312                             la Pobla de Benifassà
#> 1313                                     la Salzadella
#> 1314                             Peníscola / Peñíscola
#> 1315                                           Rossell
#> 1316                            Sant Jordi / San Jorge
#> 1317                                        Sant Mateu
#> 1318                                Sant Rafel del Riu
#> 1319                         Santa Magdalena de Pulpis
#> 1320                                         Traiguera
#> 1321                                           Vinaròs
#> 1322                                              Xert
#> 1323                              Guardamar del Segura
#> 1324                                        Crevillent
#> 1325                                       Elx / Elche
#> 1326                                        Santa Pola
#> 1327                            Albalat dels Tarongers
#> 1328                              Alfara de la Baronia
#> 1329                                 Algar de Palància
#> 1330                                  Algímia d'Alfara
#> 1331                                         Benavites
#> 1332                            Benifairó de les Valls
#> 1333                              Canet d'en Berenguer
#> 1334                                         Estivella
#> 1335                                             Faura
#> 1336                                             Gilet
#> 1337                                            Petrés
#> 1338                                Quart de les Valls
#> 1339                                          Quartell
#> 1340                                  Sagunt / Sagunto
#> 1341                                            Segart
#> 1342                                     Torres Torres
#> 1343                                        Benaguasil
#> 1344                                         Benissanó
#> 1345                                            Bétera
#> 1346                                           Casinos
#> 1347                                          l'Eliana
#> 1348                              la Pobla de Vallbona
#> 1349                                            Llíria
#> 1350                                 Nàquera / Náquera
#> 1351                                            Olocau
#> 1352                                Riba-roja de Túria
#> 1353                                             Serra
#> 1354                                       Vilamarxant
#> 1355                                             Agres
#> 1356                                          Alcoleja
#> 1357                                          Alcosser
#> 1358                                          Alfafara
#> 1359                                         Almudaina
#> 1360                                           Balones
#> 1361                                           Benasau
#> 1362                                         Beniarrés
#> 1363                                         Benilloba
#> 1364                                          Benillup
#> 1365                                       Benimarfull
#> 1366                                        Benimassot
#> 1367                                        Cocentaina
#> 1368                                            Fageca
#> 1369                                           Famorca
#> 1370                                           Gaianes
#> 1371                                             Gorga
#> 1372                                l'Alqueria d'Asnar
#> 1373                                   l'Orxa / Lorcha
#> 1374                                           Millena
#> 1375                                     Muro de Alcoy
#> 1376                                            Planes
#> 1377                                     Quatretondeta
#> 1378                                            Tollos
#> 1379       el Fondó de les Neus / Hondón de las Nieves
#> 1380                             Hondón de los Frailes
#> 1381                                 el Pinós / Pinoso
#> 1382                                           Algueña
#> 1383                                         la Romana
#> 1384                                 Monòver / Monóvar
#> 1385                                           Novelda
#> 1386                                            Petrer
#> 1387                                       Castellfort
#> 1388                                        Cinctorres
#> 1389                                           Forcall
#> 1390                                           Herbers
#> 1391                                la Mata de Morella
#> 1392                                         Todolella
#> 1393                                           Morella
#> 1394                                         Palanques
#> 1395                                Portell de Morella
#> 1396                                            Sorita
#> 1397                                         Vallibona
#> 1398                  Vilafranca / Villafranca del Cid
#> 1399                                          Villores
#> 1400                                             Agost
#> 1401                                            Aigües
#> 1402                                Alacant / Alicante
#> 1403                                             Busot
#> 1404                                       el Campello
#> 1405           la Torre de les Maçanes / Torremanzanas
#> 1406                                          Mutxamel
#> 1407                               Sant Joan d'Alacant
#> 1408 Sant Vicent del Raspeig / San Vicente del Raspeig
#> 1409                                   Xixona / Jijona
#> 1410                                            Costur
#> 1411                                        Figueroles
#> 1412                                          l'Alcora
#> 1413                               les Useres / Useras
#> 1414                          Llucena / Lucena del Cid
#> 1415                           Vistabella del Maestrat
#> 1416                                    Xodos / Chodos
#> 1417                                     Alcoi / Alcoy
#> 1418                               Banyeres de Mariola
#> 1419                                        Benifallim
#> 1420                                          Castalla
#> 1421                                               Ibi
#> 1422                                              Onil
#> 1423                                         Penàguila
#> 1424                                              Tibi
#> 1425                                        Albocàsser
#> 1426                                 Ares del Maestrat
#> 1427                             Atzeneta del Maestrat
#> 1428                                         Benafigos
#> 1429                                          Benassal
#> 1430                                              Catí
#> 1431                                             Culla
#> 1432                                     la Serratella
#> 1433                              la Torre d'en Besora
#> 1434                                             Tírig
#> 1435                                    Vilar de Canes
#> 1436                                         Beneixama
#> 1437                                              Biar
#> 1438                 el Camp de Mirra / Campo de Mirra
#> 1439                                            Cañada
#> 1440                              Albalat dels Sorells
#> 1441                               Alboraia / Alboraya
#> 1442                                         Albuixech
#> 1443                              Alfara del Patriarca
#> 1444                                         Almàssera
#> 1445                              Bonrepòs i Mirambell
#> 1446                                         Burjassot
#> 1447                            el Puig de Santa Maria
#> 1448                                         Emperador
#> 1449                                             Foios
#> 1450                                           Godella
#> 1451                               la Pobla de Farnals
#> 1452                                      Massalfassar
#> 1453                                      Massamagrell
#> 1454                                           Meliana
#> 1455                                Montcada / Moncada
#> 1456                                           Museros
#> 1457                                           Paterna
#> 1458                                             Puçol
#> 1459                                       Rafelbunyol
#> 1460                                          Rocafort
#> 1461                                 Tavernes Blanques
#> 1462                                          Vinalesa
#> 1463                                           Alaquàs
#> 1464                                             Albal
#> 1465                                          Alcàsser
#> 1466                                            Aldaia
#> 1467                                           Alfafar
#> 1468                                        Benetússer
#> 1469                                       Beniparrell
#> 1470                                         Catarroja
#> 1471                              Llocnou de la Corona
#> 1472                                           Manises
#> 1473                                        Massanassa
#> 1474                                           Mislata
#> 1475                                          Paiporta
#> 1476                                           Picanya
#> 1477                                         Picassent
#> 1478                                   Quart de Poblet
#> 1479                                            Sedaví
#> 1480                                             Silla
#> 1481                                           Torrent
#> 1482                                         Xirivella
#> 1483                                           Barxeta
#> 1484                                            Canals
#> 1485                                             Cerdà
#> 1486                                        el Genovés
#> 1487                                          Estubeny
#> 1488                             l'Alcúdia de Crespins
#> 1489                             la Font de la Figuera
#> 1490                           la Granja de la Costera
#> 1491                                 la Llosa de Ranes
#> 1492                                  Llanera de Ranes
#> 1493                             Llocnou d'en Fenollet
#> 1494                                 Moixent / Mogente
#> 1495                                           Montesa
#> 1496                                           Novetlè
#> 1497                                  Rotglà i Corberà
#> 1498                                          Torrella
#> 1499                                           Vallada
#> 1500                                            Vallés
#> 1501                                            Xàtiva
#> 1502                                          Alcalalí
#> 1503                                        Beniarbeig
#> 1504                                        Benidoleig
#> 1505                                        Benigembla
#> 1506                                          Benimeli
#> 1507                                           Benissa
#> 1508                                              Calp
#> 1509                               Castell de Castells
#> 1510                                             Dénia
#> 1511         el Poble Nou de Benitatxell / Benitachell
#> 1512                                el Ràfol d'Almúnia
#> 1513                                         el Verger
#> 1514                                       els Poblets
#> 1515                                    Gata de Gorgos
#> 1516                                         l'Atzúbia
#> 1517                               Alcalà de la Jovada
#> 1518                                     la Vall d'Ebo
#> 1519                                           Benialí
#> 1520                                             Fleix
#> 1521                                            Llíber
#> 1522                                             Murla
#> 1523                                            Ondara
#> 1524                                              Orba
#> 1525                                           Parcent
#> 1526                                         Pedreguer
#> 1527                                              Pego
#> 1528                                             Sagra
#> 1529                                   Sanet y Negrals
#> 1530                                            Senija
#> 1531                                           Teulada
#> 1532                                            Tormos
#> 1533                                     Xàbia / Jávea
#> 1534                                              Xaló
#> 1535                                             Altea
#> 1536                                          Beniardà
#> 1537                                          Benidorm
#> 1538                                          Benifato
#> 1539                                       Benimantell
#> 1540                                           Bolulla
#> 1541                               Callosa d'en Sarrià
#> 1542                                         Confrides
#> 1543                           el Castell de Guadalest
#> 1544                                         Finestrat
#> 1545                                    l'Alfàs del Pi
#> 1546                                          la Nucia
#> 1547                      la Vila Joiosa / Villajoyosa
#> 1548                                            Orxeta
#> 1549                                             Polop
#> 1550                                            Relleu
#> 1551                                             Sella
#> 1552                                           Tàrbena
#> 1553                                         Almassora
#> 1554                            Benicàssim / Benicasim
#> 1555                                           Benlloc
#> 1556                                           Borriol
#> 1557                                           Cabanes
#> 1558      Castelló de la Plana / Castellón de la Plana
#> 1559                                  la Pobla Tornesa
#> 1560                                 Sierra Engarcerán
#> 1561                             la Torre d'en Doménec
#> 1562                                       Vall d'Alba
#> 1563                              les Coves de Vinromà
#> 1564                          Orpesa / Oropesa del Mar
#> 1565                                 Sant Joan de Moró
#> 1566                                       Torreblanca
#> 1567                                         Vilafamés
#> 1568                                Vilanova d'Alcolea
#> 1569                                               Aín
#> 1570                                          Almenara
#> 1571                                            Artana
#> 1572                                             Betxí
#> 1573                               Borriana / Burriana
#> 1574                                            Eslida
#> 1575                                     Alfondeguilla
#> 1576                                    Alcudia de Veo
#> 1577                                          la Llosa
#> 1578                                    la Vall d'Uixó
#> 1579                                      la Vilavella
#> 1580        les Alqueries / Alquerías del Niño Perdido
#> 1581                                           Moncofa
#> 1582                                             Nules
#> 1583                                              Onda
#> 1584                                        Ribesalbes
#> 1585                                    Suera / Sueras
#> 1586                                             Tales
#> 1587                                         Vila-real
#> 1588                                 Xilxes / Chilches
#> 1589                                           Alberic
#> 1590                               Alcàntera de Xúquer
#> 1591                                            Alfarb
#> 1592                                          Algemesí
#> 1593                                           Alginet
#> 1594                                            Alzira
#> 1595                                           Antella
#> 1596                                         Beneixida
#> 1597                                          Benifaió
#> 1598                                          Benimodo
#> 1599                                        Benimuslem
#> 1600                                        Carcaixent
#> 1601                                            Càrcer
#> 1602                                            Carlet
#> 1603                                          Castelló
#> 1604                                           Catadau
#> 1605                                             Cotes
#> 1606                                           Gavarda
#> 1607                                        Guadassuar
#> 1608                                         l'Alcúdia
#> 1609                                           l'Énova
#> 1610                                   la Pobla Llarga
#> 1611                                           Llombai
#> 1612                                            Manuel
#> 1613                                        Massalavés
#> 1614                                 Montroi / Montroy
#> 1615                                        Montserrat
#> 1616                                       Rafelguaraf
#> 1617                                              Real
#> 1618                                       Sant Joanet
#> 1619                                           Sellent
#> 1620                                           Senyera
#> 1621                                        Sumacàrcer
#> 1622                                             Turís
#> 1623                              Albalat de la Ribera
#> 1624                                        Almussafes
#> 1625                                Benicull de Xúquer
#> 1626                                           Corbera
#> 1627                                           Cullera
#> 1628                                            Favara
#> 1629                                         Fortaleny
#> 1630                                            Llaurí
#> 1631                                 Polinyà de Xúquer
#> 1632                                             Riola
#> 1633                                           Sollana
#> 1634                                             Sueca
#> 1635                                              Ador
#> 1636                                           Alfauir
#> 1637                                          Almiserà
#> 1638                                          Almoines
#> 1639                                              Barx
#> 1640                                       Bellreguard
#> 1641                                          Beniarjó
#> 1642                         Benifairó de la Valldigna
#> 1643                                           Beniflá
#> 1644                                        Benirredrà
#> 1645                       Castellonet de la Conquesta
#> 1646                                            Daimús
#> 1647                                 el Real de Gandia
#> 1648                                            Gandia
#> 1649                             Guardamar de la Safor
#> 1650                         l'Alqueria de la Comtessa
#> 1651                               la Font d'en Carròs
#> 1652                            Llocnou de Sant Jeroni
#> 1653                                           Miramar
#> 1654                                             Oliva
#> 1655                                   Palma de Gandía
#> 1656                                           Palmera
#> 1657                                             Piles
#> 1658                                           Potries
#> 1659                                        Rafelcofer
#> 1660                                            Ròtova
#> 1661                             Simat de la Valldigna
#> 1662                          Tavernes de la Valldigna
#> 1663                           Vilallonga / Villalonga
#> 1664                                            Xeraco
#> 1665                                            Xeresa
#> 1666                                          Agullent
#> 1667                                 Aielo de Malferit
#> 1668                                    Aielo de Rugat
#> 1669                                           Albaida
#> 1670                                         Alfarrasí
#> 1671                                Atzeneta d'Albaida
#> 1672                                           Bèlgida
#> 1673                                            Bellús
#> 1674                                         Beniatjar
#> 1675                                         Benicolet
#> 1676                                         Benigànim
#> 1677                                         Benissoda
#> 1678                                        Benissuera
#> 1679                                         Bocairent
#> 1680                                            Bufali
#> 1681                                         Carrícola
#> 1682                                 Castelló de Rugat
#> 1683                                        el Palomar
#> 1684                                    Ráfol de Salem
#> 1685                           Fontanars dels Alforins
#> 1686                                     Guadasséquies
#> 1687                                         l'Olleria
#> 1688                                  la Pobla del Duc
#> 1689                                          Llutxent
#> 1690                                       Montaverner
#> 1691                         Montitxelvo / Montichelvo
#> 1692                                         Ontinyent
#> 1693                                              Otos
#> 1694                                             Pinet
#> 1695                                       Quatretonda
#> 1696                                             Rugat
#> 1697                                             Salem
#> 1698                                           Sempere
#> 1699                                         Terrateig
#> 1700                                  l'Alguer/Alghero
```
