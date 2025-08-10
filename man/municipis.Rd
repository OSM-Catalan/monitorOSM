\name{municipis}
\alias{municipis}
\docType{data}
\title{Municipis dels Països Catalans}
\description{
Dades dels municipis dels Països Catalans.
}
\details{
Alguns noms de municipis tenen duplicats. Per construir noms únics (p. ex. per generar noms de fitxers), podeu usar
\code{paste0(municipis$regio, "-", municipis$name).}
}
\usage{municipis}
\format{
  Un \code{data.frame} amb dades dels 1671 municipis per
  les següents 9 variables.
  \describe{
    \item{name:ca}{Etiqueta \code{name:ca}.}
    \item{regio}{Subdivisió ["Aran", "CatNord", "Franja", "Illes", "Principat", "PV", "Sardenya"].}
    \item{comarca}{Etiqueta \code{name:ca} de la comarca on es troba el municipi.}
    \item{osm_id}{Número identificador a OSM.}
    \item{osm_type}{Tipus d'objecte d'OSM.}
    \item{name}{Etiqueta \code{name}.}
    \item{wikipedia}{Etiqueta \code{wikipedia}.}
    \item{wikidata}{Etiqueta \code{wikidata}.}
    \item{border_type}{Etiqueta \code{border_type}.}
    \item{admin_level}{Etiqueta \code{admin_level}.}
    \item{ref:idescat}{Etiqueta \code{ref:idescat}.}
    \item{ref:ine}{Etiqueta \code{ref:ine}.}
    \item{ref:INSEE}{Etiqueta \code{ref:INSEE}.}
  }
}
\note{
Les parròquies d'Andorra corresponen a comarques (\code{admin_level = "7"}) i els pobles no tenen relacions, només
nodes. Els pobles no s'inclouen.
}
\seealso{
  Altres bases de dades de referència:
  \code{\link{PPCC}}, \code{\link{comarques}}, \code{\link{territoris}},
  \code{\link{loc_admin_centre_municipis}}, \code{\link{loc_ref}}.
}
\concept{Bases de dades de referència}
\examples{
municipis[, c("name:ca", "regio", "name")]
}
\keyword{datasets}
