library(monitorOSM)

## Països Catalans ----

canvis_ppcc <- comprova_canvis_osm(PPCC, centre = TRUE)
# canvis_html(canvis_ppcc)

if (nrow(canvis_ppcc$comparison_df) > 0) {
  conjunt_de_canvis_PPCC <- modifica_etiquetes_osm( # nolint: object_name_linter
    x = PPCC,
    claus = c("name:ca", "name", "wikipedia", "wikidata"),
    comentari = "Restaura les etiquetes de la relació PPCC.",
    hashtags = "monitorOSM"
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
    hashtags = "monitorOSM"
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
      hashtags = "monitorOSM"
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
      hashtags = "monitorOSM"
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
      hashtags = "monitorOSM"
    )
  }
  message("Conjunts de canvis a localitats:")
  print(conjunts_de_canvis_localitats)
}
