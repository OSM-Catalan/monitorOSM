# Mars i oceans del mon

Dades dels mars i oceans del mon, objectes amb etiquetes \`place =
ocean\` o \`place = sea\`.

## Ús

``` r
mars
```

## Format

Un `data.frame` amb dades dels 155 mars i oceans per les següents 8
variables.

- name:ca:

  Etiqueta `name:ca`.

- name:

  Etiqueta `name`.

- osm_id:

  Número identificador a OSM.

- osm_type:

  Tipus d'objecte d'OSM.

- alt_name:

  Etiqueta `alt_name`.

- alt_name:ca:

  Etiqueta `name`.

- place:

  Etiqueta `place`.

- wikidata:

  Etiqueta `wikidata`.

## Vegeu també

Altres bases de dades d'exotopònims de referència:
[`estats`](https://osm-catalan.github.io/monitorOSM/docs/reference/estats.md),
[`capitals`](https://osm-catalan.github.io/monitorOSM/docs/reference/capitals.md).

## Exemples

``` r
mars[, c("name:ca", "name", "wikidata")]
#>                                       name:ca
#> 1                               Oceà Antàrtic
#> 2                                  Oceà Àrtic
#> 3                               Oceà Atlàntic
#> 4                                  Oceà Índic
#> 5                                Oceà Pacífic
#> 6                               Atlàntic Nord
#> 7                                Atlàntic Sud
#> 8                             Badia de Baffin
#> 9                           Badia de Hakodate
#> 10                            Badia de Hudson
#> 11                             Badia de James
#> 12                         Estret de Macassar
#> 13                                Golf d'Aden
#> 14                              Golf d'Alaska
#> 15                                Golf d'Oman
#> 16                            Golf de Bengala
#> 17                               Golf de Boni
#> 18                         Golf de Califòrnia
#> 19                             Golf de Guinea
#> 20                           Golf de Kalamita
#> 21                              Golf de Mèxic
#> 22                               Golf de Siam
#> 23                             Golf de Tomini
#> 24                            Golf de Tribugà
#> 25                                Golf Pèrsic
#> 26                                   Kattegat
#> 27                              Mar Adriàtica
#> 28                                 Mar Balear
#> 29                                Mar Bàltica
#> 30                                 Mar Blanca
#> 31                             Mar Cantàbrica
#> 32                                  Mar Carib
#> 33                                 Mar Càspia
#> 34                                Mar Cèltica
#> 35                                Mar d'Åland
#> 36                              Mar d'Alborán
#> 37                             Mar d'Amundsen
#> 38                              Mar d'Andaman
#> 39                               Mar d'Aràbia
#> 40                              Mar d'Arafura
#> 41                                 Mar d'Azov
#> 42                               Mar d'Icària
#> 43                              Mar d'Irlanda
#> 44                             Mar d'Irminger
#> 45                              Mar d'Okhotsk
#> 46                              Mar d'Okhotsk
#> 47                                Mar de Bali
#> 48                               Mar de Banda
#> 49                             Mar de Barents
#> 50                            Mar de Beaufort
#> 51                      Mar de Bellingshausen
#> 52                              Mar de Bering
#> 53                            Mar de Bismarck
#> 54                               Mar de Bohol
#> 55                              Mar de Bòtnia
#> 56                             Mar de Camotes
#> 57                             Mar de Cèlebes
#> 58                               Mar de Creta
#> 59                               Mar de Davis
#> 60                    Mar de Dumont d'Urville
#> 61                                Mar de Fiji
#> 62                              Mar de Flores
#> 63                         Mar de Groenlàndia
#> 64                           Mar de Halmahera
#> 65                                Mar de Java
#> 66                                Mar de Kara
#> 67                                Mar de Koro
#> 68                         Mar de l'Arxipèlag
#> 69                       Mar de la Cooperació
#> 70                 Mar de la Sibèria Oriental
#> 71                 Mar de la Sibèria Oriental
#> 72                  Mar de la Xina Meridional
#> 73                    Mar de la Xina Oriental
#> 74                            Mar de Labrador
#> 75                              Mar de Làptev
#> 76                             Mar de Lazarev
#> 77                       Mar de les Filipines
#> 78                        Mar de les Hèbrides
#> 79                       Mar de les Lacadives
#> 80                        Mar de les Moluques
#> 81                               Mar de Líbia
#> 82                             Mar de Lincoln
#> 83                             Mar de Lincoln
#> 84                             Mar de Llevant
#> 85                             Mar de Màrmara
#> 86                              Mar de Mawson
#> 87                              Mar de Mirtos
#> 88                             Mar de Noruega
#> 89                             Mar de Petxora
#> 90                       Mar de Riiser-Larsen
#> 91                                Mar de Ross
#> 92                              Mar de Salomó
#> 93                               Mar de Samar
#> 94                                Mar de Savu
#> 95                              Mar de Scotia
#> 96                               Mar de Seram
#> 97                             Mar de Sibuyan
#> 98                               Mar de Somov
#> 99                                Mar de Sulu
#> 100                           Mar de Tasmània
#> 101                              Mar de Timor
#> 102                             Mar de Tràcia
#> 103                            Mar de Visayas
#> 104                             Mar de Wadden
#> 105                             Mar de Wandel
#> 106                            Mar de Weddell
#> 107                            Mar del Corall
#> 108                              Mar del Japó
#> 109                              Mar del Nord
#> 110              Mar del Príncep Gustau Adolf
#> 111                               Mar del Sud
#> 112                      Mar dels Cosmonautes
#> 113                        Mar dels Sargassos
#> 114                         Mar dels Txuktxis
#> 115                         Mar dels Txuktxis
#> 116                                  Mar Egea
#> 117                                 Mar Groga
#> 118                      Mar Interior de Seto
#> 119                                Mar Jònica
#> 120                                 Mar Lígur
#> 121                          Mar Mediterrània
#> 122                                 Mar Negra
#> 123                                  Mar Roig
#> 124                               Mar Tirrena
#> 125 Mars interiors de la costa oest d'Escòcia
#> 126                         Oceà Pacífic Nord
#> 127                          Oceà Pacífic Sud
#> 128                         Passatge de Drake
#> 129                           Riu de la Plata
#> 130                                 Skagerrak
#> 131                                      <NA>
#> 132                                      <NA>
#> 133                                      <NA>
#> 134                                      <NA>
#> 135                                      <NA>
#> 136                                      <NA>
#> 137                                      <NA>
#> 138                                      <NA>
#> 139                                      <NA>
#> 140                                      <NA>
#> 141                                      <NA>
#> 142                                      <NA>
#> 143                                      <NA>
#> 144                                      <NA>
#> 145                                      <NA>
#> 146                                      <NA>
#> 147                                      <NA>
#> 148                              Mar de Bohai
#>                                                                                                                           name
#> 1                                                                                                                         <NA>
#> 2                                                                                                                         <NA>
#> 3                                                                                                                         <NA>
#> 4                                                                                                                         <NA>
#> 5                                                                                                                         <NA>
#> 6                                                                                                         North Atlantic Ocean
#> 7                                                                                                         South Atlantic Ocean
#> 8                                                                                                                   Baffin Bay
#> 9                                                                                                                       函館湾
#> 10                                                                                                                  Hudson Bay
#> 11                                                                                                      James Bay / Baie James
#> 12                                                                                                              Selat Makassar
#> 13                                                                                                                    خليج عدن
#> 14                                                                                                              Gulf of Alaska
#> 15                                                                                                                    بحر عمان
#> 16                                                                                                               Bay of Bengal
#> 17                                                                                                                  Teluk Bone
#> 18                                                                                                          Gulf of California
#> 19                                                                                                              Gulf of Guinea
#> 20                                                                                                           Каламитский залив
#> 21                                                                                                             Golfo de México
#> 22                                                                                                            Gulf of Thailand
#> 23                                                                                                                Teluk Tomini
#> 24                                                                                                            Golfo de Tribugá
#> 25                                                                                                               الخليج العربي
#> 26                                                                                                                    Kattegat
#> 27                                                                             Jadransko more / Mare Adriatico / Deti Adriatik
#> 28                                                                                                                  Mar Balear
#> 29  Morze Bałtyckie  - Baltijos jūra - Baltijas jūra -  Läänemeri - Itämeri - Östersjön - Østersøen - Ostsee - Балтийское море
#> 30                                                                                                                  Белое море
#> 31                                                                                                              Mar Cantábrico
#> 32                                                                                                               Caribbean Sea
#> 33                                  Каспий теңізі - Hazar deňizi - دریای خزر - Xəzər dənizi - Каспийское море - دریای مازندران
#> 34                                                                                                   Celtic Sea / Mer Celtique
#> 35                                                                                                                 Ahvenanmeri
#> 36                                                                                                Mar de Alborán / بحر البحران
#> 37                                                                                                                Amundsen Sea
#> 38                                                                                                                 Andaman Sea
#> 39                                                                                                     Arabian Sea / بحر العرب
#> 40                                                                                                                 Arafura Sea
#> 41                                                                                               Азовське море - Азовское море
#> 42                                                                                                              Ικάριο πέλαγος
#> 43                                                                                                                   Irish Sea
#> 44                                                                                                                Irminger Sea
#> 45                                                                                                              Sea of Okhotsk
#> 46                                                                                                               Охотское море
#> 47                                                                                                                   Laut Bali
#> 48                                                                                                                  Laut Banda
#> 49                                                                                                              Баренцево море
#> 50                                                                                                                Beaufort Sea
#> 51                                                                                                          Bellingshausen Sea
#> 52                                                                                                                  Bering Sea
#> 53                                                                                                                Bismarck Sea
#> 54                                                                                                                   Bohol Sea
#> 55                                                                                                     Selkämeri / Bottenhavet
#> 56                                                                                                                 Camotes Sea
#> 57                                                                                                                 Celebes Sea
#> 58                                                                                                             Κρητικό πέλαγος
#> 59                                                                                                                   Davis Sea
#> 60                                                                                                        Mer Dumont-d'Urville
#> 61                                                                                                                    Fiji Sea
#> 62                                                                                                                 Laut Flores
#> 63                                                                                                               Greenland Sea
#> 64                                                                                                              Laut Halmahera
#> 65                                                                                                                   Laut Jawa
#> 66                                                                                                                Карское море
#> 67                                                                                                                    Koro Sea
#> 68                                                                                                                Saaristomeri
#> 69                                                                                                           Maro de Kunlaboro
#> 70                                                                                                     Восточно-Сибирское море
#> 71                                                                                                     Восточно-Сибирское море
#> 72                                                                                              南海/Biển Đông/South China Sea
#> 73                                                                                  东海/東海/東シナ海/동중국해/East China Sea
#> 74                                                                                                                Labrador Sea
#> 75                                                                                                               Море Лаптевых
#> 76                                                                                                             Maro de Lazarev
#> 77                                                                                                              Philippine Sea
#> 78                                                                                                         Sea of the Hebrides
#> 79                                                                                                               Laccadive Sea
#> 80                                                                                                                 Molucca Sea
#> 81                                                                                                                  Libyan Sea
#> 82                                                                                                                 Lincoln Sea
#> 83                                                                                                                 Lincoln Sea
#> 84                                                                                                               Levantine Sea
#> 85                                                                                                              Marmara Denizi
#> 86                                                                                                              Maro de Mawson
#> 87                                                                                                              Μυρτώο Πέλαγος
#> 88                                                                                                               Norwegian Sea
#> 89                                                                                                              Печорское море
#> 90                                                                                                       Maro de Riiser-Larsen
#> 91                                                                                                                    Ross Sea
#> 92                                                                                                                 Solomon Sea
#> 93                                                                                                                   Samar Sea
#> 94                                                                                                                   Laut Sawu
#> 95                                                                                                                  Scotia Sea
#> 96                                                                                                                  Laut Seram
#> 97                                                                                                                 Sibuyan Sea
#> 98                                                                                                               Maro de Somov
#> 99                                                                                                                    Sulu Sea
#> 100                                                                                                Te Tai-o-Rehua / Tasman Sea
#> 101                                                                                                                 Laut Timor
#> 102                                                                                                            Θρακικό Πέλαγος
#> 103                                                                                                                Visayan Sea
#> 104                                                                                         Waddenzee / Wattenmeer / Vadehavet
#> 105                                                                                                                Wandelhavet
#> 106                                                                                                                Weddell Sea
#> 107                                                                                                                  Coral Sea
#> 108                                                                                              日本海 / Японское море / 동해
#> 109                                                        North Sea / Nordsee / Noordzee / Nordsøen / Nordsjøen / Mer du Nord
#> 110                                                                                                    Prince Gustaf Adolf Sea
#> 111                                                                                                                       남해
#> 112                                                                                                        Maro de Kosmonaŭtoj
#> 113                                                                                                               Sargasso Sea
#> 114                                                                                                             Чукотское море
#> 115                                                                                                                Chukchi Sea
#> 116                                                                                               Αιγαίον Πέλαγος / Ege Denizi
#> 117                                                                                                                 Yellow Sea
#> 118                                                                                                                   瀬戸内海
#> 119                                                                                                                 Ionian Sea
#> 120                                                                                                    Mar Ligure / Mer Ligure
#> 121                                                                                                          Mediterranean Sea
#> 122                                               Чорне море - Marea Neagră - Черно море – Karadeniz - შავი ზღვა - Чёрное море
#> 123                                                                                                               البحر الأحمر
#> 124                                                                                             Mar Tirreno / Mer Tyrrhénienne
#> 125                                                                                  Inner Seas off the West Coast of Scotland
#> 126                                                                                                        North Pacific Ocean
#> 127                                                                                                        South Pacific Ocean
#> 128                                                                                                              Drake Passage
#> 129                                                                                                            Río de la Plata
#> 130                                                                                                                  Skagerrak
#> 131                                                                                                                     八代海
#> 132                                                                                                                     天草灘
#> 133                                                                                                                Laut Natuna
#> 134                                                                                                            Rogalandsfeltet
#> 135                                                                                                                 Brevikflua
#> 136                                                                                                                    Klatten
#> 137                                                                                                                  Luzon Sea
#> 138                                                                                                                     五島灘
#> 139                                                                                                                The Red Sea
#> 140                                                                                                                     Sanden
#> 141                                                                                                                       斎灘
#> 142                                                                                                                     安芸灘
#> 143                                                                                                         Тендрівська затока
#> 144                                                                                                            Pinochet Strait
#> 145                                                                                                                     海州湾
#> 146                                                                                                              Paso Oglander
#> 147                                                                                                                     영흥만
#> 148                                                                                                                       渤海
#>      wikidata
#> 1       Q7354
#> 2        Q788
#> 3         Q97
#> 4       Q1239
#> 5         Q98
#> 6     Q350134
#> 7    Q1482804
#> 8      Q37040
#> 9   Q11396019
#> 10      Q3040
#> 11    Q223810
#> 12    Q194477
#> 13     Q41837
#> 14    Q180531
#> 15     Q79948
#> 16     Q38684
#> 17    Q641148
#> 18    Q132811
#> 19     Q41430
#> 20   Q2026815
#> 21     Q12630
#> 22    Q131217
#> 23   Q1507546
#> 24   Q3110256
#> 25     Q34675
#> 26    Q131716
#> 27     Q13924
#> 28    Q200712
#> 29       Q545
#> 30     Q44133
#> 31   Q2090594
#> 32      Q1247
#> 33      Q5484
#> 34     Q81499
#> 35    Q271043
#> 36    Q199408
#> 37     Q72154
#> 38     Q47632
#> 39     Q58705
#> 40    Q128880
#> 41     Q35000
#> 42   Q1640853
#> 43     Q41735
#> 44   Q1542675
#> 45     Q41602
#> 46     Q41602
#> 47    Q277014
#> 48    Q171510
#> 49     Q45823
#> 50    Q131274
#> 51    Q183455
#> 52     Q44725
#> 53    Q199436
#> 54    Q242326
#> 55   Q1649939
#> 56    Q540179
#> 57     Q19270
#> 58    Q193149
#> 59    Q509321
#> 60   Q1391243
#> 61   Q2355931
#> 62    Q150370
#> 63    Q132868
#> 64    Q212083
#> 65     Q49364
#> 66     Q33629
#> 67    Q315954
#> 68    Q650654
#> 69   Q2085564
#> 70    Q163434
#> 71    Q163434
#> 72     Q37660
#> 73     Q45341
#> 74    Q184189
#> 75      Q7988
#> 76   Q1576063
#> 77    Q159183
#> 78   Q1971856
#> 79    Q544914
#> 80    Q185291
#> 81    Q738028
#> 82    Q243125
#> 83    Q243125
#> 84    Q748696
#> 85     Q35367
#> 86   Q1902276
#> 87    Q840427
#> 88     Q47545
#> 89    Q217501
#> 90   Q1576011
#> 91    Q164466
#> 92    Q199479
#> 93    Q392623
#> 94    Q193465
#> 95    Q204703
#> 96    Q210855
#> 97    Q594834
#> 98   Q1404920
#> 99    Q160194
#> 100    Q33254
#> 101   Q131418
#> 102   Q379063
#> 103   Q474708
#> 104    Q26080
#> 105   Q259929
#> 106   Q173343
#> 107    Q82931
#> 108    Q27092
#> 109     Q1693
#> 110  Q2322479
#> 111   Q624569
#> 112  Q1509546
#> 113   Q169274
#> 114   Q159252
#> 115   Q159252
#> 116    Q34575
#> 117    Q37960
#> 118   Q231312
#> 119    Q37495
#> 120    Q42820
#> 121     Q4918
#> 122      Q166
#> 123    Q23406
#> 124    Q38882
#> 125  Q5762423
#> 126 Q12353254
#> 127 Q12355425
#> 128   Q143650
#> 129    Q35827
#> 130     Q1695
#> 131    Q49560
#> 132  Q3306188
#> 133 Q10829960
#> 134      <NA>
#> 135      <NA>
#> 136      <NA>
#> 137      <NA>
#> 138 Q11372327
#> 139      <NA>
#> 140      <NA>
#> 141 Q11500419
#> 142  Q4302577
#> 143  Q2392966
#> 144  Q2783226
#> 145 Q15939411
#> 146  Q5716459
#> 147 Q27245429
#> 148   Q181969
```
