library(monitorOSM)

## Països Catalans ----

canvis_ppcc <- comprova_canvis_osm(PPCC, centre = TRUE)
# canvis_html(canvis_ppcc)

if (nrow(canvis_ppcc$comparison_df) > 0) {
  conjunt_de_canvis_PPCC <- modifica_etiquetes_osm( # nolint: object_name_linter
    x = PPCC,
    claus = c("name:ca", "name", "wikipedia", "wikidata"),
    comentari = "Restaura les etiquetes de la relació PPCC.",
    hashtags = "#monitorOSM"
  )
  message("Conjunt de canvis a PPCC:")
  print(conjunt_de_canvis_PPCC)
}


## Territoris ----

canvis_territoris <- comprova_canvis_osm(territoris[, setdiff(names(territoris), "regio")], centre = TRUE)
# canvis_html(canvis_territoris)

if (nrow(canvis_territoris$comparison_df) > 0) {
  uid_modificats <- gsub("https://osm\\.org/", "", canvis_territoris$comparison_df$osm_url)
  uid_territoris <- paste0(territoris$osm_type, "/", territoris$osm_id)
  conjunt_de_canvis_territoris <- modifica_etiquetes_osm(
    x = territoris[uid_territoris %in% uid_modificats, ],
    claus = c("name:ca", "name", "wikipedia", "wikidata"),
    comentari = "Restaura les etiquetes dels territoris dels PPCC.",
    hashtags = "#monitorOSM"
  )
  message("Conjunt de canvis a territoris:")
  print(conjunt_de_canvis_territoris)
}


## Comarques ----

canvis_comarques <- comprova_canvis_osm(comarques[, setdiff(names(comarques), "regio")], centre = TRUE)
# canvis_html(canvis_comarques)

if (nrow(canvis_comarques$comparison_df) > 0) {
  uid_modificats <- gsub("https://osm\\.org/", "", canvis_comarques$comparison_df$osm_url)
  uid_comarques <- paste0(comarques$osm_type, "/", comarques$osm_id)

  comarques_modificar <- comarques[uid_comarques %in% uid_modificats, ]

  regions <- unique(comarques_modificar$regio)
  conjunts_de_canvis_comarques <- structure(character(length(regions)), names = regions)

  for (regio in regions) {
    conjunts_de_canvis_comarques[regio] <- modifica_etiquetes_osm(
      x = comarques_modificar[comarques_modificar$regio %in% regio, ],
      claus = c("name:ca", "name", "wikipedia", "wikidata"),
      comentari = paste0("Restaura les etiquetes del les comarques a ", regio, "."),
      hashtags = "#monitorOSM"
    )
  }
  message("Conjunts de canvis a comarques:")
  print(conjunts_de_canvis_comarques)
}


## Municipis ----

canvis_municipis <- comprova_canvis_osm(municipis[, setdiff(names(municipis), c("regio", "comarca"))], centre = TRUE)
# canvis_html(canvis_municipis)

if (nrow(canvis_municipis$comparison_df) > 0) {
  uid_modificats <- gsub("https://osm\\.org/", "", canvis_municipis$comparison_df$osm_url)
  uid_municipis <- paste0(municipis$osm_type, "/", municipis$osm_id)

  municipis_modificar <- municipis[uid_municipis %in% uid_modificats, ]

  comarques <- unique(municipis_modificar$comarca)
  conjunts_de_canvis_municipis <- structure(character(length(comarques)), names = comarques)

  for (comarca in comarques) {
    conjunts_de_canvis_municipis[comarca] <- modifica_etiquetes_osm(
      x = municipis_modificar[municipis_modificar$comarca %in% comarca, ],
      claus = c("name:ca", "name", "wikipedia", "wikidata"),
      comentari = paste0("Restaura les etiquetes dels municipis a ", comarca, "."),
      hashtags = "#monitorOSM"
    )
  }
  message("Conjunts de canvis a municipis:")
  print(conjunts_de_canvis_municipis)
}


## Localitats ----

canvis_loc_admin_centre_munici <- comprova_canvis_osm(
  loc_admin_centre_municipis[, setdiff(names(loc_admin_centre_municipis), c("regio", "comarca", "municipi"))],
  centre = TRUE
)
# canvis_html(canvis_loc_admin_centre_munici)

if (nrow(canvis_loc_admin_centre_munici$comparison_df) > 0) {
  uid_modificats <- gsub("https://osm\\.org/", "", canvis_loc_admin_centre_munici$comparison_df$osm_url)
  uid_localitats <- paste0(loc_admin_centre_municipis$osm_type, "/", loc_admin_centre_municipis$osm_id)

  localitats_modificar <- loc_admin_centre_municipis[uid_localitats %in% uid_modificats, ]

  comarques <- unique(localitats_modificar$comarca)
  conjunts_de_canvis_localitats <- structure(character(length(comarques)), names = comarques)

  for (comarca in comarques) {
    conjunts_de_canvis_localitats[comarca] <- modifica_etiquetes_osm(
      x = localitats_modificar[localitats_modificar$comarca %in% comarca, ],
      claus = c("name:ca", "name", "wikipedia", "wikidata", "place", "capital", "admin_level"),
      comentari = paste0("Restaura les etiquetes de les localitats a ", comarca, "."),
      hashtags = "#monitorOSM"
    )
  }
  message("Conjunts de canvis a localitats:")
  print(conjunts_de_canvis_localitats)
}


## Internacional ----

### Estats ----

cols <- c(
  "name:ca", "name", "osm_id", "osm_type", "official_name", "official_name:ca", "alt_name", "alt_name:ca",
  "old_name", "old_name:ca", "old_official_name", "old_official_name:ca", "wikidata"
)
canvis_estats <- comprova_canvis_osm(estats[, cols])
# canvis_html(canvis_estats)

if (nrow(canvis_estats$comparison_df) > 0) {
  uid_modificats <- gsub("https://osm\\.org/", "", canvis_estats$comparison_df$osm_url)
  uid_estats <- paste0(estats$osm_type, "/", estats$osm_id)

  estats_modificar <- estats[uid_estats %in% uid_modificats, ]

  conjunts_de_canvis_estats <- structure(character(nrow(estats_modificar)), names = estats_modificar$`name:ca`)

  for (i in seq_along(conjunts_de_canvis_estats)) {
    conjunts_de_canvis_estats[i] <- modifica_etiquetes_osm(
      x = estats_modificar[i, ],
      claus = grep(":ca$", cols, value = TRUE),
      comentari = paste0("Set Catalan names for ", estats_modificar$name[i], "."),
      hashtags = "#monitorOSM"
    )
  }
  message("Conjunts de canvis a estats:")
  print(conjunts_de_canvis_estats)
}


### Capitals ----

cols <- c(
  "name:ca", "name", "osm_id", "osm_type", "alt_name", "alt_name:ca", "int_name", "loc_name", "long_name", "nat_name",
  "official_name", "official_name:ca", "old_name", "old_name:ca", "reg_name", "short_name", "shortest_name",
  "admin_level", "wikidata"
)
canvis_capitals <- comprova_canvis_osm(capitals[, cols])
# canvis_html(canvis_capitals)

if (nrow(canvis_capitals$comparison_df) > 0) {
  uid_modificats <- gsub("https://osm\\.org/", "", canvis_capitals$comparison_df$osm_url)
  uid_capitals <- paste0(capitals$osm_type, "/", capitals$osm_id)

  capitals_modificar <- capitals[uid_capitals %in% uid_modificats, ]

  # TODO: omplir les capitals sense estat a la base de dades
  # estats <- unique(capitals_modificar$estat)
  # conjunts_de_canvis_capitals <- structure(character(length(estats)), names = estats)

  estats <- seq_len(nrow(capitals_modificar))
  conjunts_de_canvis_capitals <- structure(character(length(estats)), names = capitals_modificar$name)

  for (estat in estats) {
    conjunts_de_canvis_capitals[estat] <- modifica_etiquetes_osm(
      x = capitals_modificar[estat, ], # TODO: [capitals_modificar$estat %in% estat, ],
      claus = grep(":ca$", cols, value = TRUE),
      comentari = paste0("Set Catalan names for ", capitals_modificar$name[estat], "."),
      hashtags = "#monitorOSM"
    )
  }
  message("Conjunts de canvis a capitals:")
  print(conjunts_de_canvis_capitals)
}


### Mars ----

cols <- c("name:ca", "name", "osm_id", "osm_type", "alt_name", "alt_name:ca", "place", "wikidata")
canvis_mars <- comprova_canvis_osm(mars[, cols], )
# canvis_html(canvis_mars)

if (nrow(canvis_mars$comparison_df) > 0) {
  uid_modificats <- gsub("https://osm\\.org/", "", canvis_mars$comparison_df$osm_url)
  uid_mars <- paste0(mars$osm_type, "/", mars$osm_id)

  mars_modificar <- mars[uid_mars %in% uid_modificats, ]
  conjunts_de_canvis_mars <- structure(character(nrow(mars_modificar)), names = mars_modificar$`name:ca`)

  for (i in seq_along(conjunts_de_canvis_mars)) {
    conjunts_de_canvis_mars[i] <- modifica_etiquetes_osm(
      x = mars_modificar[i, ],
      claus = grep(":ca$", cols, value = TRUE),
      comentari = paste0("Set Catalan names for ", mars_modificar$name[i], "."),
      hashtags = "#monitorOSM"
    )
  }
  message("Conjunts de canvis a mars:")
  print(conjunts_de_canvis_mars)
}
