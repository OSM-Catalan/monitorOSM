# Estats del mon

Dades dels estats del mon, relacions amb etiquetes \`admin_centre = 2\`
i \`boundary = administrative\`.

## Ús

``` r
estats
```

## Format

Un `data.frame` amb dades dels 243 estats per les següents 9 variables.

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

- long_name:

  Etiqueta `alt_name:ca`.

- native_name:

  Etiqueta `native_name`.

- official_name:

  Etiqueta `official_name`.

- official_name:ca:

  Etiqueta `official_name:ca`.

- old_name:

  Etiqueta `old_name`.

- old_name:ca:

  Etiqueta `old_name:ca`.

- old_official_name:

  Etiqueta `old_official_name`.

- old_official_name:ca:

  Etiqueta `old_official_name:ca`.

- short_name:

  Etiqueta `short_name`.

- short_name:ca:

  Etiqueta `short_name:ca`.

- wikidata:

  Etiqueta `wikidata`.

## Vegeu també

Altres bases de dades d'exotopònims de referència:
[`capitals`](https://osm-catalan.github.io/monitorOSM/docs/reference/capitals.md),
[`mars`](https://osm-catalan.github.io/monitorOSM/docs/reference/mars.md).

## Exemples

``` r
estats[, c("name:ca", "name", "wikidata")]
#>                                       name:ca
#> 1                                  Afganistan
#> 2                          Akrotiri i Dekélia
#> 3                                     Albània
#> 4                                    Alemanya
#> 5                          Alemanya - Àustria
#> 6                        Alemanya - Luxemburg
#> 7                           Alemanya - Suïssa
#> 8                                     Algèria
#> 9                                     Andorra
#> 10                                     Angola
#> 11                                   Anguilla
#> 12                          Antigua i Barbuda
#> 13                             Aràbia Saudita
#> 14                                  Argentina
#> 15                                    Armènia
#> 16                                  Austràlia
#> 17                                    Àustria
#> 18                    Àustria - Liechtenstein
#> 19                           Àustria - Suïssa
#> 20                           Àustria - Suïssa
#> 21                                Azerbaidjan
#> 22                                    Bahames
#> 23                                    Bahrain
#> 24                                Bangla Desh
#> 25                                   Barbados
#> 26                                    Bèlgica
#> 27                                     Belize
#> 28                                      Benín
#> 29                                   Bermudes
#> 30                                     Bhutan
#> 31                                Bielorússia
#> 32                                    Bolívia
#> 33                       Bòsnia i Hercegovina
#> 34                                   Botswana
#> 35                                     Brasil
#> 36                                     Brunei
#> 37                                   Bulgària
#> 38                               Burkina Faso
#> 39                                    Burundi
#> 40                                   Cambodja
#> 41                                    Camerun
#> 42                                     Canadà
#> 43                                   Cap Verd
#> 44                          Ciutat del Vaticà
#> 45                                   Colòmbia
#> 46                                    Comores
#> 47                                      Congo
#> 48                             Corea del Nord
#> 49                              Corea del Sud
#> 50                              Costa d'Ivori
#> 51                                 Costa Rica
#> 52                                    Croàcia
#> 53                        Croàcia - Eslovènia
#> 54                                       Cuba
#> 55                                  Dinamarca
#> 56                                   Djibouti
#> 57                                   Dominica
#> 58                                     Egipte
#> 59                                El Salvador
#> 60                        Emirats Àrabs Units
#> 61                                    Equador
#> 62                                    Eritrea
#> 63                                 Eslovàquia
#> 64                                  Eslovènia
#> 65                                    Espanya
#> 66                     Estats Units d'Amèrica
#> 67                                    Estònia
#> 68                                   Eswatini
#> 69                                    Etiòpia
#> 70                                       Fiji
#> 71                                  Filipines
#> 72                                  Finlàndia
#> 73                                     França
#> 74                          França - Alemanya
#> 75                           França - Andorra
#> 76                           França - Bèlgica
#> 77                           França - Espanya
#> 78              França - Itàlia (secció nord)
#> 79               França - Itàlia (secció sud)
#> 80                         França - Luxemburg
#> 81                            França - Mònaco
#> 82                            França - Suïssa
#> 83                           França - Surinam
#> 84                                      Gabon
#> 85                                     Gàmbia
#> 86                                    Geòrgia
#> 87                                      Ghana
#> 88                                  Gibraltar
#> 89                                     Grècia
#> 90                                    Grenada
#> 91                                Groenlàndia
#> 92                                  Guatemala
#> 93                                   Guernsey
#> 94                                     Guinea
#> 95                              Guinea Bissau
#> 96                          Guinea Equatorial
#> 97                                     Guyana
#> 98                                      Haití
#> 99                                   Hondures
#> 100                                   Hongria
#> 101                       Hongria - Eslovènia
#> 102                                     Iemen
#> 103                               Illa de Man
#> 104                        Illa de Montserrat
#> 105                              Illes Caiman
#> 106                                Illes Cook
#> 107                               Illes Fèroe
#> 108  Illes Geòrgia del Sud i Sandwich del Sud
#> 109                            Illes Malvines
#> 110                            Illes Marshall
#> 111                            Illes Pitcairn
#> 112                      Illes Turks i Caicos
#> 113                  Illes Verges Britàniques
#> 114                                     Índia
#> 115                                 Indonèsia
#> 116                                      Iran
#> 117                                      Iraq
#> 118                                   Irlanda
#> 119                                  Islàndia
#> 120                                    Israel
#> 121                                    Itàlia
#> 122                        Itàlia - Eslovènia
#> 123                                   Jamaica
#> 124                                      Japó
#> 125                                    Jersey
#> 126                                  Jordània
#> 127                                Kazakhstan
#> 128                                     Kenya
#> 129                              Kirguizistan
#> 130                                  Kiribati
#> 131                                    Kosovo
#> 132                                    Kuwait
#> 133                                      Laos
#> 134                                   Lesotho
#> 135                                   Letònia
#> 136                                     Líban
#> 137                                   Libèria
#> 138                                     Líbia
#> 139                             Liechtenstein
#> 140                                  Lituània
#> 141                                 Luxemburg
#> 142                        Macedònia del Nord
#> 143                                Madagascar
#> 144                                  Malàisia
#> 145                                    Malawi
#> 146                                  Maldives
#> 147                                      Mali
#> 148                                     Malta
#> 149                                    Marroc
#> 150                                   Maurici
#> 151                                Mauritània
#> 152                                     Mèxic
#> 153                                Micronèsia
#> 154                                  Moçambic
#> 155                                  Moldàvia
#> 156                                    Mònaco
#> 157                                  Mongòlia
#> 158                                Montenegro
#> 159                                   Myanmar
#> 160                                   Namíbia
#> 161                                     Nauru
#> 162                                     Nepal
#> 163                                 Nicaragua
#> 164                                     Níger
#> 165                                   Nigèria
#> 166                                      Niue
#> 167                                   Noruega
#> 168                              Nova Zelanda
#> 169                                      Oman
#> 170                             Països Baixos
#> 171                   Països Baixos – Bèlgica
#> 172                                  Pakistan
#> 173                                     Palau
#> 174                                    Panamà
#> 175                         Papua Nova Guinea
#> 176                                  Paraguai
#> 177                                      Perú
#> 178                                   Polònia
#> 179                                  Portugal
#> 180                                     Qatar
#> 181                                Regne Unit
#> 182        República Àrab Sahrauí Democràtica
#> 183                  República Centreafricana
#> 184           República Democràtica del Congo
#> 185                      República Dominicana
#> 186                                   Romania
#> 187                                    Rússia
#> 188                                    Rwanda
#> 189                       Saint Kitts i Nevis
#> 190                               Saint Lucia
#> 191            Saint Vincent i les Grenadines
#> 192                                    Salomó
#> 193                                     Samoa
#> 194                                San Marino
#> 195 Santa Helena, Ascensió i Tristan da Cunha
#> 196                       São Tomé i Príncipe
#> 197                                   Senegal
#> 198                                    Sèrbia
#> 199                                Seychelles
#> 200                              Sierra Leone
#> 201                                  Singapur
#> 202                                     Síria
#> 203                                   Somàlia
#> 204                                 Sri Lanka
#> 205                                Sud-àfrica
#> 206                                     Sudan
#> 207                             Sudan del Sud
#> 208                                    Suècia
#> 209                                    Suïssa
#> 210                                   Surinam
#> 211                               Tadjikistan
#> 212                                 Tailàndia
#> 213                                    Taiwan
#> 214                                  Tanzània
#> 215        Territori Britànic de l'Oceà Índic
#> 216                            Timor Oriental
#> 217                                      Togo
#> 218                                   Tokelau
#> 219                                     Tonga
#> 220                         Trinitat i Tobago
#> 221                                   Tunísia
#> 222                              Turkmenistan
#> 223                                   Turquia
#> 224                                    Tuvalu
#> 225                                      Txad
#> 226                                   Txèquia
#> 227                                   Ucraïna
#> 228                                    Uganda
#> 229                                   Uruguai
#> 230                                Uzbekistan
#> 231                                   Vanuatu
#> 232                                 Veneçuela
#> 233                                   Vietnam
#> 234                                      Xile
#> 235                                      Xina
#> 236                                     Xipre
#> 237                                    Zàmbia
#> 238                                  Zimbabwe
#> 239                                      <NA>
#> 240                                      <NA>
#> 241                                      <NA>
#> 242                                      <NA>
#> 243                                      <NA>
#>                                                                             name
#> 1                                                                      افغانستان
#> 2                                                          Akrotiri and Dhekelia
#> 3                                                                      Shqipëria
#> 4                                                                    Deutschland
#> 5                                                       Deutschland - Österreich
#> 6                              Deutschland - Luxembourg / Luxemburg / Lëtzebuerg
#> 7                                      Deutschland — Schweiz / Suisse / Svizerra
#> 8                                                        Algérie ⵍⵣⵣⴰⵢⴻⵔ الجزائر
#> 9                                                                        Andorra
#> 10                                                                        Angola
#> 11                                                                      Anguilla
#> 12                                                           Antigua and Barbuda
#> 13                                                                      السعودية
#> 14                                                                     Argentina
#> 15                                                                      Հայաստան
#> 16                                                                     Australia
#> 17                                                                    Österreich
#> 18                                                    Österreich — Liechtenstein
#> 19                                                          Österreich - Schweiz
#> 20                                      Österreich — Schweiz / Suisse / Svizzera
#> 21                                                                    Azərbaycan
#> 22                                                                   The Bahamas
#> 23                                                                       البحرين
#> 24                                                                      বাংলাদেশ
#> 25                                                                      Barbados
#> 26                                                   België / Belgique / Belgien
#> 27                                                                        Belize
#> 28                                                                         Bénin
#> 29                                                                       Bermuda
#> 30                                                                        འབྲུགཡུལ་
#> 31                                                                      Беларусь
#> 32                                                                       Bolivia
#> 33                                     Bosna i Hercegovina / Босна и Херцеговина
#> 34                                                                      Botswana
#> 35                                                                        Brasil
#> 36                                                                  Brunei بروني
#> 37                                                                      България
#> 38                                                                  Burkina Faso
#> 39                                                                       Burundi
#> 40                                                             ព្រះរាជាណាចក្រ​កម្ពុជា
#> 41                                                                      Cameroun
#> 42                                                                        Canada
#> 43                                                                    Cabo Verde
#> 44                                         Civitas Vaticana - Città del Vaticano
#> 45                                                                      Colombia
#> 46                                                      Comores Komori جزر القمر
#> 47                                                                         Congo
#> 48                                                        조선민주주의인민공화국
#> 49                                                                      대한민국
#> 50                                                                 Côte d’Ivoire
#> 51                                                                    Costa Rica
#> 52                                                                      Hrvatska
#> 53                                                          Hrvatska - Slovenija
#> 54                                                                          Cuba
#> 55                                                                       Danmark
#> 56                                                               Djibouti جيبوتي
#> 57                                                                      Dominica
#> 58                                                                           مصر
#> 59                                                                   El Salvador
#> 60                                                      الإمارات العربية المتحدة
#> 61                                                                       Ecuador
#> 62                                                           ኤርትራ Eritrea إرتريا
#> 63                                                                     Slovensko
#> 64                                                                     Slovenija
#> 65                                                                        España
#> 66                                                                 United States
#> 67                                                                         Eesti
#> 68                                                                      Eswatini
#> 69                                                                 ኢትዮጵያ إثيوبيا
#> 70                                                                          Viti
#> 71                                                                   Philippines
#> 72                                                               Suomi / Finland
#> 73                                                                        France
#> 74                                                          France - Deutschland
#> 75                                                              France - Andorra
#> 76                                          France - Belgique / België / Belgien
#> 77                                                               France - España
#> 78                                                 France - Italy (section nord)
#> 79                                                  France - Italy (section sud)
#> 80                                  France - Luxembourg / Luxemburg / Lëtzebuerg
#> 81                                                               France - Monaco
#> 82                                       France - Schweiz/Suisse/Svizzera/Svizra
#> 83                                                      France / Suriname border
#> 84                                                                         Gabon
#> 85                                                                        Gambia
#> 86                                                                    საქართველო
#> 87                                                                         Ghana
#> 88                                                                     Gibraltar
#> 89                                                                         Ελλάς
#> 90                                                                       Grenada
#> 91                                                              Kalaallit Nunaat
#> 92                                                                     Guatemala
#> 93                                                                      Guernsey
#> 94                                                                        Guinée
#> 95                                                                  Guiné-Bissau
#> 96                                                             Guinea Ecuatorial
#> 97                                                                        Guyana
#> 98                                                                         Ayiti
#> 99                                                                      Honduras
#> 100                                                                 Magyarország
#> 101                                                     Magyarország - Slovenija
#> 102                                                                        اليمن
#> 103                                                                  Isle of Man
#> 104                                                                   Montserrat
#> 105                                                               Cayman Islands
#> 106                                                                 Kūki ʻĀirani
#> 107                                                                      Føroyar
#> 108                                 South Georgia and the South Sandwich Islands
#> 109                                                             Falkland Islands
#> 110                                                                        Ṃajeḷ
#> 111                                                                Pitkern Ailen
#> 112                                                     Turks and Caicos Islands
#> 113                                                       British Virgin Islands
#> 114                                                                        India
#> 115                                                                    Indonesia
#> 116                                                                        ایران
#> 117                                                                       العراق
#> 118                                                               Éire / Ireland
#> 119                                                                       Ísland
#> 120                                                                        ישראל
#> 121                                                                       Italia
#> 122                                                           Italia - Slovenija
#> 123                                                                      Jamaica
#> 124                                                                         日本
#> 125                                                                       Jersey
#> 126                                                                       الأردن
#> 127                                                                    Қазақстан
#> 128                                                                        Kenya
#> 129                                                                   Кыргызстан
#> 130                                                                     Kiribati
#> 131                                                              Kosova / Kosovo
#> 132                                                                       الكويت
#> 133                                                                     ປະເທດລາວ
#> 134                                                                      Lesotho
#> 135                                                                      Latvija
#> 136                                                                        لبنان
#> 137                                                                      Liberia
#> 138                                                                        ليبيا
#> 139                                                                Liechtenstein
#> 140                                                                      Lietuva
#> 141                                                                   Lëtzebuerg
#> 142                                                           Северна Македонија
#> 143                                                    Madagasikara / Madagascar
#> 144                                                              Malaysia مليسيا
#> 145                                                                       Malawi
#> 146                                                                       ދިވެހިރާއްޖެ
#> 147                                                                         Mali
#> 148                                                                        Malta
#> 149                                                          Maroc ⵍⵎⵖⵔⵉⴱ المغرب
#> 150                                                          Mauritius / Maurice
#> 151                                                                    موريتانيا
#> 152                                                                       México
#> 153                                                                   Micronesia
#> 154                                                                   Moçambique
#> 155                                                                      Moldova
#> 156                                                                       Monaco
#> 157                                                       Монгол улс ᠮᠤᠩᠭᠤᠯ ᠤᠯᠤᠰ
#> 158                                                        Crna Gora / Црна Гора
#> 159                                                                        မြန်မာ
#> 160                                                                      Namibia
#> 161                                                                       Naoero
#> 162                                                                         नेपाल
#> 163                                                                    Nicaragua
#> 164                                                                        Niger
#> 165                                                                      Nigeria
#> 166                                                                         Niuē
#> 167                                                                        Norge
#> 168                                                       New Zealand / Aotearoa
#> 169                                                                         عمان
#> 170                                                                    Nederland
#> 171                                      Nederland — Belgique / België / Belgien
#> 172                                                                      پاکستان
#> 173                                                                        Belau
#> 174                                                                       Panamá
#> 175                                                                Papua Niugini
#> 176                                                          Paraguay / Paraguái
#> 177                                                                         Perú
#> 178                                                                       Polska
#> 179                                                                     Portugal
#> 180                                                                          قطر
#> 181                                                               United Kingdom
#> 182 República Árabe Saharaui Democrática الجمهورية العربية الصحراوية الديمقراطية
#> 183                           Ködörösêse tî Bêafrîka / République centrafricaine
#> 184                                             République démocratique du Congo
#> 185                                                         República Dominicana
#> 186                                                                      România
#> 187                                                                       Россия
#> 188                                                                       Rwanda
#> 189                                                        Saint Kitts and Nevis
#> 190                                                                  Saint Lucia
#> 191                                             Saint Vincent and the Grenadines
#> 192                                                              Solomon Islands
#> 193                                                                        Sāmoa
#> 194                                                                   San Marino
#> 195                                 Saint Helena, Ascension and Tristan da Cunha
#> 196                                                          São Tomé e Príncipe
#> 197                                                                      Sénégal
#> 198                                                                       Србија
#> 199                                                                        Sesel
#> 200                                                                 Sierra Leone
#> 201                                                                    Singapore
#> 202                                                                        سوريا
#> 203                                                           Soomaaliya الصومال
#> 204                                                                    Sri Lanka
#> 205                                                                 South Africa
#> 206                                                                      السودان
#> 207                                                     South Sudan جنوب السودان
#> 208                                                                      Sverige
#> 209                                               Schweiz/Suisse/Svizzera/Svizra
#> 210                                                                     Suriname
#> 211                                                                   Тоҷикистон
#> 212                                                                    ประเทศไทย
#> 213                                                                         臺灣
#> 214                                                                     Tanzania
#> 215                                               British Indian Ocean Territory
#> 216                                                                  Timor-Leste
#> 217                                                                         Togo
#> 218                                                                      Tokelau
#> 219                                                                        Tonga
#> 220                                                          Trinidad and Tobago
#> 221                                                                         تونس
#> 222                                                                 Türkmenistan
#> 223                                                                      Türkiye
#> 224                                                                       Tuvalu
#> 225                                                                   Tchad تشاد
#> 226                                                                        Česko
#> 227                                                                      Україна
#> 228                                                                       Uganda
#> 229                                                                      Uruguay
#> 230                                                                  Oʻzbekiston
#> 231                                                                      Vanuatu
#> 232                                                                    Venezuela
#> 233                                                                     Việt Nam
#> 234                                                                        Chile
#> 235                                                                         中国
#> 236                                                              Κύπρος - Kıbrıs
#> 237                                                                       Zambia
#> 238                                                                     Zimbabwe
#> 239                                                                         <NA>
#> 240                                                             Isla Tres Cruces
#> 241                                                                   Isla Bassi
#> 242                                                         Isla Filomena Grande
#> 243                                                                   Isla Verde
#>      wikidata
#> 1        Q889
#> 2      Q37362
#> 3        Q222
#> 4        Q183
#> 5    Q1991986
#> 6    Q3088708
#> 7    Q1991810
#> 8        Q262
#> 9        Q228
#> 10       Q916
#> 11     Q25228
#> 12       Q781
#> 13       Q851
#> 14       Q414
#> 15       Q399
#> 16       Q408
#> 17        Q40
#> 18   Q1991324
#> 19   Q1991486
#> 20   Q1991486
#> 21       Q227
#> 22       Q778
#> 23       Q398
#> 24       Q902
#> 25       Q244
#> 26        Q31
#> 27       Q242
#> 28       Q962
#> 29     Q23635
#> 30       Q917
#> 31       Q184
#> 32       Q750
#> 33       Q225
#> 34       Q963
#> 35       Q155
#> 36       Q921
#> 37       Q219
#> 38       Q965
#> 39       Q967
#> 40       Q424
#> 41      Q1009
#> 42        Q16
#> 43      Q1011
#> 44       Q237
#> 45       Q739
#> 46       Q970
#> 47       Q971
#> 48       Q423
#> 49       Q884
#> 50      Q1008
#> 51       Q800
#> 52       Q224
#> 53   Q1991311
#> 54       Q241
#> 55        Q35
#> 56       Q977
#> 57       Q784
#> 58        Q79
#> 59       Q792
#> 60       Q878
#> 61       Q736
#> 62       Q986
#> 63       Q214
#> 64       Q215
#> 65        Q29
#> 66        Q30
#> 67       Q191
#> 68      Q1050
#> 69       Q115
#> 70       Q712
#> 71       Q928
#> 72        Q33
#> 73       Q142
#> 74   Q1991225
#> 75   Q2009420
#> 76   Q2052849
#> 77   Q2637319
#> 78   Q1991288
#> 79   Q1991288
#> 80   Q3088912
#> 81   Q1996372
#> 82   Q1991697
#> 83   Q3088913
#> 84      Q1000
#> 85      Q1005
#> 86       Q230
#> 87       Q117
#> 88      Q1410
#> 89        Q41
#> 90       Q769
#> 91       Q223
#> 92       Q774
#> 93     Q25230
#> 94      Q1006
#> 95      Q1007
#> 96       Q983
#> 97       Q734
#> 98       Q790
#> 99       Q783
#> 100       Q28
#> 101  Q3088945
#> 102      Q805
#> 103     Q9676
#> 104    Q13353
#> 105     Q5785
#> 106    Q26988
#> 107     Q4628
#> 108    Q35086
#> 109     Q9648
#> 110      Q709
#> 111    Q35672
#> 112    Q18221
#> 113    Q25305
#> 114      Q668
#> 115      Q252
#> 116      Q794
#> 117      Q796
#> 118       Q27
#> 119      Q189
#> 120      Q801
#> 121       Q38
#> 122   Q572463
#> 123      Q766
#> 124       Q17
#> 125      Q785
#> 126      Q810
#> 127      Q232
#> 128      Q114
#> 129      Q813
#> 130      Q710
#> 131     Q1246
#> 132      Q817
#> 133      Q819
#> 134     Q1013
#> 135      Q211
#> 136      Q822
#> 137     Q1014
#> 138     Q1016
#> 139      Q347
#> 140       Q37
#> 141       Q32
#> 142      Q221
#> 143     Q1019
#> 144      Q833
#> 145     Q1020
#> 146      Q826
#> 147      Q912
#> 148      Q233
#> 149     Q1028
#> 150     Q1027
#> 151     Q1025
#> 152       Q96
#> 153      Q702
#> 154     Q1029
#> 155      Q217
#> 156      Q235
#> 157      Q711
#> 158      Q236
#> 159      Q836
#> 160     Q1030
#> 161      Q697
#> 162      Q837
#> 163      Q811
#> 164     Q1032
#> 165     Q1033
#> 166    Q34020
#> 167       Q20
#> 168      Q664
#> 169      Q842
#> 170    Q29999
#> 171  Q3088843
#> 172      Q843
#> 173      Q695
#> 174      Q804
#> 175      Q691
#> 176      Q733
#> 177      Q419
#> 178       Q36
#> 179       Q45
#> 180      Q846
#> 181      Q145
#> 182    Q40362
#> 183      Q929
#> 184      Q974
#> 185      Q786
#> 186      Q218
#> 187      Q159
#> 188     Q1037
#> 189      Q763
#> 190      Q760
#> 191      Q757
#> 192      Q685
#> 193      Q683
#> 194      Q238
#> 195   Q192184
#> 196     Q1039
#> 197     Q1041
#> 198      Q403
#> 199     Q1042
#> 200     Q1044
#> 201      Q334
#> 202      Q858
#> 203     Q1045
#> 204      Q854
#> 205      Q258
#> 206     Q1049
#> 207      Q958
#> 208       Q34
#> 209       Q39
#> 210      Q730
#> 211      Q863
#> 212      Q869
#> 213      Q865
#> 214      Q924
#> 215    Q43448
#> 216      Q574
#> 217      Q945
#> 218    Q36823
#> 219      Q678
#> 220      Q754
#> 221      Q948
#> 222      Q874
#> 223       Q43
#> 224      Q672
#> 225      Q657
#> 226      Q213
#> 227      Q212
#> 228     Q1036
#> 229       Q77
#> 230      Q265
#> 231      Q686
#> 232      Q717
#> 233      Q881
#> 234      Q298
#> 235      Q148
#> 236      Q229
#> 237      Q953
#> 238      Q954
#> 239      <NA>
#> 240      <NA>
#> 241 Q31923393
#> 242  Q5921615
#> 243 Q18285634
```
