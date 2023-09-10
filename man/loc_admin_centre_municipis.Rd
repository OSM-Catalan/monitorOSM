\name{loc_admin_centre_municipis}
\alias{loc_admin_centre_municipis}
\docType{data}
\title{Centres administratius de les relacions dels municipis dels Països Catalans}
\description{
Dades de les localitats que fan d'\code{admin_centre} dels municipis dels Països Catalans.
}
\usage{"loc_admin_centre_municipis"}
\format{
  Un \code{data.frame} amb dades de les 1673 localitats establertes com a \code{admin_centre} de les relacions dels
  municipis per les següents 10 variables.
  \describe{
    \item{name:ca}{Etiqueta \code{name:ca}.}
    \item{regio}{Subdivisió ["Aran", "CatNord", "Franja", "Illes", "Principat", "PV", "Sardenya"].}
    \item{comarca}{Etiqueta \code{name:ca} de la comarca on es troba el municipi.}
    \item{municipi}{Etiqueta \code{name:ca} del municipi en què l'element fa d'\code{admin_centre}.}
    \item{osm_id}{Número identificador a OSM.}
    \item{osm_type}{Tipus d'objecte d'OSM.}
    \item{name}{Etiqueta \code{name}.}
    \item{wikipedia}{Etiqueta \code{wikipedia}.}
    \item{wikidata}{Etiqueta \code{wikidata}.}
    \item{place}{Etiqueta \code{place}.}
  }
}
\seealso{
  Altres bases de dades de referència:
  \code{\link{PPCC}}, \code{\link{municipis}}, \code{\link{comarques}}, \code{\link{territoris}}.
}
\concept{Bases de dades de referència}
\examples{
loc_admin_centre_municipis[, c("name:ca", "regio", "municipi", "name")]
}
\keyword{datasets}
