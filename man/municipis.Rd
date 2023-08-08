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
  Un \code{data.frame} amb dades dels 1671 municipis (1671 relacions + 1673 nodes que fan d'\code{admin_centre}) per
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
    \item{admin_level}{Etiqueta \code{admin_level}.}
  }
}
\note{
Les parròquies d'Andorra corresponen a comarques (\code{admin_level = "7"}) i els pobles no tenen relacions, només nodes.
Els pobles no s'inclouen.
}
\seealso{
  \code{\link{PPCC}}, \code{\link{comarques}}, \code{\link{territoris}}.
}
\examples{
municipis[, c("name:ca", "regio", "name")]
}
\keyword{datasets}
