# Capitals d'estats del mon

Dades de les capitals d'estats del mon, objectes amb etiquetes \`capital
= 2\`, \`capital = yes\` o nodes amb el rol d'\`admin_centre\` de de
relacions d'estats.

## Ús

``` r
capitals
```

## Format

Un `data.frame` amb dades de les 155 capitals per les següents 8
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
[`mars`](https://osm-catalan.github.io/monitorOSM/docs/reference/mars.md).

## Exemples

``` r
capitals[, c("name:ca", "name", "wikidata")]
#>                       name:ca                                  name wikidata
#> 1                       Kabul                                  کابل    Q5838
#> 2                        <NA>                   Episkopi Cantonment     <NA>
#> 3                      Tirana                                Tiranë   Q19689
#> 4                      Berlín                                Berlin      Q64
#> 5                       Alger                  Alger ⴷⵣⴰⵢⴻⵔ الجزائر    Q3561
#> 6            Andorra la Vella                      Andorra la Vella    Q1863
#> 7                      Luanda                                Luanda    Q3897
#> 8                  The Valley                            The Valley   Q30994
#> 9                Saint John's                            St. John's   Q36262
#> 10                   Al-Riyad                                الرياض    Q3692
#> 11               Buenos Aires                          Buenos Aires    Q1486
#> 12                     Erevan                                 Երևան    Q1953
#> 13                   Canberra                              Canberra    Q3114
#> 14                      Viena                                  Wien    Q1741
#> 15                       Bakú                                  Bakı    Q9248
#> 16                     Nassau                                Nassau    Q2467
#> 17                  Al-Manama                               المنامة    Q3882
#> 18                      Dacca                                  ঢাকা    Q1354
#> 19                 Bridgetown                            Bridgetown   Q36168
#> 20                Brussel·les                   Bruxelles - Brussel     Q239
#> 21                   Belmopan                              Belmopan    Q3043
#> 22                 Porto-Novo                            Porto-Novo    Q3799
#> 23                   Hamilton                              Hamilton   Q30985
#> 24                    Thimphu                                  ཐིམ་ཕུ    Q9270
#> 25                      Minsk                                 Мінск    Q2280
#> 26                     La Paz                                La Paz    Q1491
#> 27                      Sucre                                 Sucre    Q2907
#> 28                   Sarajevo                              Sarajevo   Q11194
#> 29                   Gaborone                              Gaborone    Q3919
#> 30                   Brasília                              Brasília    Q2844
#> 31        Bandar Seri Begawan                   Bandar Seri Begawan    Q9279
#> 32                      Sofia                                 София     Q472
#> 33                Ouagadougou                           Ouagadougou    Q3777
#> 34                     Gitega                                Gitega  Q167551
#> 35                 Phnom Penh                           រាជធានីភ្នំពេញ    Q1850
#> 36                    Yaoundé                               Yaoundé    Q3808
#> 37                     Ottawa                                Ottawa    Q1930
#> 38                      Praia                                 Praia    Q3751
#> 39          Ciutat del Vaticà Civitas Vaticana - Città del Vaticano     Q237
#> 40                     Bogotà                                Bogotá    Q2841
#> 41                     Moroni                         Moroni موروني    Q3901
#> 42                Brazzaville                           Brazzaville    Q3844
#> 43                  Pyongyang                                평양시   Q18808
#> 44                       Seül                                  서울    Q8684
#> 45               Yamoussoukro                          Yamoussoukro    Q3768
#> 46                   San José                              San José    Q3070
#> 47                     Zagreb                                Zagreb    Q1435
#> 48                   l'Havana                             La Habana    Q1563
#> 49                Copenhaguen                             København    Q1748
#> 50                   Djibouti                       Djibouti جيبوتي    Q3604
#> 51                     Roseau                                Roseau   Q36281
#> 52                   el Caire                               القاهرة      Q85
#> 53               San Salvador                          San Salvador    Q3110
#> 54                  Abu Dhabi                               أبو ظبي    Q1519
#> 55                      Quito                                 Quito    Q2900
#> 56                     Asmara                     ኣስመራ Asmara أسمرة    Q3642
#> 57                 Bratislava                            Bratislava    Q1780
#> 58                  Ljubljana                             Ljubljana     Q437
#> 59                     Madrid                                Madrid    Q2807
#> 60              Washington DC                            Washington      Q61
#> 61                    Tallinn                               Tallinn    Q1770
#> 62                Addis Abeba                 አዲስ አበባ / Addis Ababa    Q3624
#> 63                       Suva                                  Suva   Q38807
#> 64                     Manila                                Manila    Q1461
#> 65                   Hèlsinki                              Helsinki    Q1757
#> 66                      París                                 Paris      Q90
#> 67                 Libreville                            Libreville    Q3825
#> 68                     Banjul                                Banjul    Q3726
#> 69                   Tbilissi                               თბილისი     Q994
#> 70                      Accra                                 Accra    Q3761
#> 71                  Gibraltar                             Gibraltar    Q1410
#> 72                     Atenes                                 Αθήνα    Q1524
#> 73             Saint George's                          St. George's   Q41547
#> 74                       Nuuk                                  Nuuk     Q226
#> 75        Ciutat de Guatemala                   Ciudad de Guatemala    Q1555
#> 76           Saint Peter Port                         St Peter Port  Q174262
#> 77                    Conakry                               Conakry    Q3733
#> 78                     Bissau                                Bissau    Q3739
#> 79                     Malabo                                Malabo    Q3818
#> 80                 Georgetown                            Georgetown   Q10717
#> 81             Port-au-Prince                        Port-au-Prince   Q34261
#> 82                Tegucigalpa                           Tegucigalpa  Q609188
#> 83                   Budapest                              Budapest    Q1781
#> 84                       Sanà                                 صنعاء    Q2471
#> 85                    Douglas                               Douglas   Q18569
#> 86                     Brades                                Brades   Q31006
#> 87                George Town                           George Town  Q172996
#> 88                     Avarua                                Avarua  Q170482
#> 89                   Tórshavn                              Tórshavn   Q10704
#> 90          King Edward Point                     King Edward Point  Q393878
#> 91               Port Stanley                               Stanley   Q12245
#> 92                  Adamstown                             Adamstown   Q48273
#> 93              Cockburn Town                         Cockburn Town   Q34205
#> 94                  Road Town                             Road Town  Q179431
#> 95                 Nova Delhi                             New Delhi     Q987
#> 96                    Jakarta                               Jakarta    Q3630
#> 97                    Teheran                                 تهران    Q3616
#> 98                     Bagdad                                 بغداد    Q1530
#> 99                     Dublín                                Dublin    Q1761
#> 100                 Reykjavík                             Reykjavík    Q1764
#> 101                 Jerusalem                               ירושלים    Q1218
#> 102                      Roma                                  Roma     Q220
#> 103                  Kingston                              Kingston   Q34692
#> 104                    Tòquio                                東京都    Q1490
#> 105              Saint Helier                             St Helier  Q147738
#> 106                     Amman                                  عمان    Q3805
#> 107                    Astana                                Астана    Q1520
#> 108                   Nairobi                               Nairobi    Q3870
#> 109                    Bixkek                                Бишкек    Q9361
#> 110                  Pristina                             Prishtinë   Q25270
#> 111                 Al-Kuwait                          مدينة الكويت   Q35178
#> 112                 Vientiane                                 ວຽງຈັນ    Q9326
#> 113                    Maseru                                Maseru    Q3909
#> 114                      Riga                                  Rīga    Q1773
#> 115                    Beirut                                 بيروت    Q3820
#> 116                  Monròvia                              Monrovia    Q3748
#> 117                   Trípoli                                طرابلس    Q3579
#> 118                     Vaduz                                 Vaduz    Q1844
#> 119                   Vílnius                               Vilnius     Q216
#> 120       Ciutat de Luxemburg                            Luxembourg    Q1842
#> 121                    Skopje                                Скопје     Q384
#> 122              Antananarivo                          Antananarivo    Q3915
#> 123              Kuala Lumpur                          Kuala Lumpur    Q1865
#> 124                  Lilongwe                              Lilongwe    Q3876
#> 125                      Malé                                    މާލެ    Q9347
#> 126                    Bamako                                Bamako    Q3703
#> 127               La Valletta                              Valletta   Q23800
#> 128                     Rabat                     Rabat ⵔⴱⴰⵟ الرباط    Q3551
#> 129                Port Louis                            Port Louis    Q3929
#> 130                Nouakchott                    Nouakchott نواكشوط    Q3688
#> 131           Ciutat de Mèxic                      Ciudad de México    Q1489
#> 132                   Palikir                               Palikir   Q42751
#> 133                    Maputo                                Maputo    Q3889
#> 134                  Chisinau                              Chișinău   Q21197
#> 135                    Mònaco                                Monaco     Q235
#> 136                Ulan Bator             Улаанбаатар ᠤᠯᠠᠭᠠᠨᠪᠠᠭᠠᠲᠤᠷ   Q23430
#> 137                 Podgorica                             Podgorica   Q23564
#> 138                 Naypyidaw                              နေပြည်တော်   Q37400
#> 139                  Windhoek                              Windhoek    Q3935
#> 140                     Yaren                                 Yaren   Q31026
#> 141                  Katmandú                               काठमाडौं    Q3037
#> 142                   Managua                               Managua    Q3274
#> 143                    Niamey                                Niamey    Q3674
#> 144                     Abuja                                 Abuja    Q3787
#> 145                     Alofi                                 Alofi   Q30966
#> 146                      Oslo                                  Oslo     Q585
#> 147                Wellington                            Wellington   Q23661
#> 148                    Masqat                                  مسقط    Q3826
#> 149                 Amsterdam                             Amsterdam     Q727
#> 150                 Islamabad                            اسلام آباد    Q1362
#> 151                 Ngerulmud                             Ngerulmud  Q515229
#> 152                    Panamà                                Panamá    Q3306
#> 153              Port Moresby                          Port Moresby   Q36526
#> 154                  Asunción                              Asunción    Q2933
#> 155                      Lima                                  Lima    Q2868
#> 156                  Varsòvia                              Warszawa     Q270
#> 157                    Lisboa                                Lisboa     Q597
#> 158                      Doha                                الدوحة    Q3861
#> 159                   Londres                                London      Q84
#> 160                    Bangui                                Bangui    Q3832
#> 161                  Kinshasa                              Kinshasa    Q3838
#> 162             Santo Domingo                         Santo Domingo   Q34820
#> 163                  Bucarest                             București   Q19660
#> 164                    Moscou                                Москва     Q649
#> 165                    Kigali                                Kigali    Q3859
#> 166                Basseterre                            Basseterre   Q41295
#> 167                  Castries                              Castries   Q41699
#> 168                 Kingstown                             Kingstown   Q41474
#> 169                   Honiara                               Honiara   Q40921
#> 170                      Apia                                  Apia   Q36260
#> 171      Ciutat de San Marino                   Città di San Marino    Q1848
#> 172                  São Tomé                              São Tomé    Q3932
#> 173                     Dakar                                 Dakar    Q3718
#> 174                   Belgrad                               Београд    Q3711
#> 175                  Victòria                              Victoria    Q3940
#> 176                  Freetown                              Freetown    Q3780
#> 177                  Singapur                             Singapore     Q334
#> 178                    Damasc                                  دمشق    Q3766
#> 179                  Mogadixo                       Muqdisho مقديشو    Q2449
#> 180                   Colombo                               Colombo   Q35381
#> 181                  Pretòria                              Pretoria    Q3926
#> 182                   Khartum                               الخرطوم    Q1963
#> 183                      Juba                                  Juba    Q1947
#> 184                  Estocolm                             Stockholm    Q1754
#> 185                     Berna                                  Bern      Q70
#> 186                Paramaribo                            Paramaribo    Q3001
#> 187                   Mbabane                               Mbabane    Q3904
#> 188                  Duixanbe                               Душанбе    Q9365
#> 189                   Bangkok                          กรุงเทพมหานคร    Q1861
#> 190                    Taipei                                臺北市    Q1867
#> 191                    Dodoma                                Dodoma    Q3866
#> 192                      <NA>                     Camp Thunder Cove Q5027293
#> 193                      Dili                                  Dili    Q9310
#> 194                      Lomé                                  Lomé    Q3792
#> 195                      <NA>                               Fakaofo Q2140263
#> 196                Nuku'alofa                            Nukuʻalofa   Q38834
#> 197             Port-of-Spain                         Port of Spain   Q39178
#> 198                   Tunísia                                  تونس    Q3572
#> 199                   Aşgabat                               Aşgabat   Q23438
#> 200                    Ankara                                Ankara    Q3640
#> 201                  Funafuti                              Funafuti   Q34126
#> 202                 N'Djamena                     N'Djaména انجمينا    Q3659
#> 203                     Praga                                 Praha    Q1085
#> 204                      Kíiv                                  Київ    Q1899
#> 205                   Kampala                               Kampala    Q3894
#> 206                Montevideo                            Montevideo    Q1335
#> 207                  Taixkent                              Toshkent     Q269
#> 208                 Port Vila                             Port Vila   Q37806
#> 209                   Caracas                               Caracas    Q1533
#> 210                     Hanoi                                Hà Nội    Q1858
#> 211          Santiago de Xile                              Santiago    Q2887
#> 212                    Pequín                                北京市     Q956
#> 213                   Nicòsia                    Λευκωσία - Lefkoşa    Q3856
#> 214                    Lusaka                                Lusaka    Q3881
#> 215                    Harare                                Harare    Q3921
#> 216                     Alger                                 Alger  Q141026
#> 217                    Astana                                Астана    Q1520
#> 218               Basse-Terre                           Basse-Terre  Q167024
#> 219                  Belmopan                              Belmopan    Q3043
#> 220              Bloemfontein                          Bloemfontein   Q37701
#> 221                Bratislava                            Bratislava    Q1780
#> 222                    Caiena                               Cayenne   Q44401
#> 223          Charlotte Amalie                      Charlotte Amalie   Q51681
#> 224                  Chisinau                              Chișinău   Q21197
#> 225            Ciutat del Cap                             Cape Town    Q5465
#> 226                    Erevan                                 Երևան    Q1953
#> 227            Fort-de-France                        Fort-de-France   Q81621
#> 228                   Hagåtña                               Hagåtña   Q30988
#> 229                  Hargeisa                       Hargeysa هرجيسا  Q168652
#> 230                  Hèlsinki                              Helsinki    Q1757
#> 231                 Jamestown                             Jamestown   Q30970
#> 232                  l'Havana                             La Habana   Q12588
#> 233                      Lomé                                  Lomé    Q3792
#> 234                    Majuro                                 Mājro   Q12919
#> 235                 Mamoudzou                             Mamoudzou  Q132676
#> 236                 Mariehamn                             Mariehamn   Q48329
#> 237                     Minsk                                 Мінск    Q2280
#> 238                    Nouméa                                Nouméa    Q9733
#> 239                     Oyala                      Ciudad de la Paz Q1140136
#> 240                 Pago Pago                             Pago Pago   Q51678
#> 241                     París                                 Paris      Q90
#> 242         Port-aux-Français                     Port-aux-Français  Q839559
#> 243                  Pristina                             Prishtinë   Q25270
#> 244                 Ramal·lah                              رام الله  Q158119
#> 245                 Reykjavík                       Reykjavíkurborg    Q1764
#> 246               Saint-Denis                           Saint-Denis   Q47045
#> 247              Saint-Pierre                          Saint-Pierre  Q249884
#> 248                     Sofia                                 София     Q472
#> 249 Sri Jayewardenepura Kotte             Sri Jayawardenepura Kotte   Q41963
#> 250                    Taipei                                臺北市    Q1867
#> 251                  Taixkent                              Toshkent     Q269
#> 252                   Tallinn                               Tallinn    Q1770
#> 253                Tarawa Sud                          South Tarawa  Q131233
#> 254                   Teheran                             شهر تهران    Q3616
#> 255                  Tifariti                               تفاريتي Q2360337
#> 256                  Varsòvia                              Warszawa     Q270
#> 257                     Viena                                  Wien    Q1741
#> 258                    Zagreb                                Zagreb    Q1435
#> 259                      <NA>                               Douglas   Q18569
#> 260                      <NA>                                  Bakı     <NA>
#> 261                      <NA>                    Cantón de San José Q2536213
#> 262                      <NA>                             شهر بوکان     <NA>
```
