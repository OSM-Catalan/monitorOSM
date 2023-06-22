#' Retorna la història d'un element d'OSM
#'
#' Obté totes les versions de tots els elements i tags d'una relació d'OSM
#'
#' @param osm_id una id d'una relació de la qual volem obtenir la història
#' @param osm_type string que especifica el tipus d'element ("node", "way" o "relation")
#' @details Pensat per a realitzar un informe dels últims canvis realitzats a un objecte
#'
#' @return En el cas que l'objecte sigui una relació, retorna una llista amb dos data.frames,
#'   un amb els membres de totes les versions de l'objecte
#'   i un amb tots els tags, el número de versió, la id del changeset, la data del canvi, el nom de l'usuari que el va fer i el seu uid.
#'   En cas que sigui una via, retorna una llista amb dos data.frame, un amb tots els nodes que formen la via i un amb tots els tags.
#'   En cas que sigui un node, retorna un data.frame amb informació sobre tots els canvis i tags'
#' @export
#'
#' @examples
#' \dontrun{
#' id_la_selva <- 368462 # totes les versions de la relació que conté la comarca de la Selva
#' canvis <- get_osm_history(id_la_selva, "relation")
#' }
get_osm_history <- function(osm_id, osm_type) {
  stopifnot(osm_type %in% c("node", "way", "relation"))
  # obtain data
  resp <- httr2::resp_body_xml(httr2::req_perform(httr2::request(paste0(
    "https://www.openstreetmap.org/api/0.6/",
    osm_type,
    "/",
    osm_id,
    "/history"
  ))))
  osm_objects <- xml2::xml_find_all(resp, ".//node|.//way|.//relation")
  # build the data.frame
  if (osm_type == "relation") {
    tags <- lapply(osm_objects, function(x) {
      data.frame(
        osm_id = xml2::xml_attr(x, "id"),
        version = xml2::xml_attr(x, "version"),
        changeset = xml2::xml_attr(x, "changeset"),
        timestamp = xml2::xml_attr(x, "timestamp"),
        user = xml2::xml_attr(x, "user"),
        user_id = xml2::xml_attr(x, "uid"),
        tag_key = xml2::xml_attr(xml2::xml_find_all(x, ".//tag"), "k"),
        tag_value = xml2::xml_attr(xml2::xml_find_all(x, ".//tag"), "v")
      )
    })
    tags <- do.call(rbind, tags)
    members <- lapply(osm_objects, function(x) {
      data.frame(
        osm_id = xml2::xml_attr(x, "id"),
        version = xml2::xml_attr(x, "version"),
        changeset = xml2::xml_attr(x, "changeset"),
        timestamp = xml2::xml_attr(x, "timestamp"),
        user = xml2::xml_attr(x, "user"),
        user_id = xml2::xml_attr(x, "uid"),
        member_ref = xml2::xml_attr(xml2::xml_find_all(x, ".//member"), "ref"),
        member_type = xml2::xml_attr(xml2::xml_find_all(x, ".//member"), "type"),
        member_role = xml2::xml_attr(xml2::xml_find_all(x, ".//member"), "role")
      )
    })
    members <- do.call(rbind, members)
    out <- list(members = members, tags = tags)
    return(out)
  } else if (osm_type == "way") {
    tags <- lapply(osm_objects, function(x) {
      data.frame(
        osm_id = xml2::xml_attr(x, "id"),
        version = xml2::xml_attr(x, "version"),
        changeset = xml2::xml_attr(x, "changeset"),
        timestamp = xml2::xml_attr(x, "timestamp"),
        user = xml2::xml_attr(x, "user"),
        user_id = xml2::xml_attr(x, "uid"),
        tag_key = xml2::xml_attr(xml2::xml_find_all(x, ".//tag"), "k"),
        tag_value = xml2::xml_attr(xml2::xml_find_all(x, ".//tag"), "v")
      )
    })
    tags <- do.call(rbind, tags)
    nodes <- lapply(osm_objects, function(x) {
      data.frame(
        osm_id = xml2::xml_attr(x, "id"),
        version = xml2::xml_attr(x, "version"),
        changeset = xml2::xml_attr(x, "changeset"),
        timestamp = xml2::xml_attr(x, "timestamp"),
        user = xml2::xml_attr(x, "user"),
        user_id = xml2::xml_attr(x, "uid"),
        node_id = xml2::xml_attr(xml2::xml_find_all(x, ".//nd"), "ref")
      )
    })
    nodes <- do.call(rbind, nodes)
    out <- list(nodes = nodes, tags = tags)
    return(out)
  } else {
    tags <- lapply(osm_objects, function(x) {
      data.frame(
        osm_id = xml2::xml_attr(x, "id"),
        version = xml2::xml_attr(x, "version"),
        changeset = xml2::xml_attr(x, "changeset"),
        timestamp = xml2::xml_attr(x, "timestamp"),
        user = xml2::xml_attr(x, "user"),
        user_id = xml2::xml_attr(x, "uid"),
        lat = xml2::xml_attr(x, "lat"),
        lon = xml2::xml_attr(x, "lon"),
        tag_key = xml2::xml_attr(xml2::xml_find_all(x, ".//tag"), "k"),
        tag_value = xml2::xml_attr(xml2::xml_find_all(x, ".//tag"), "v")
      )
    })
    return(tags)
  }
}
