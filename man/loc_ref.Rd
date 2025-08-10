\name{loc_ref}
\alias{loc_ref}
\docType{data}
\title{Localitats amb referència de l'administració als Països Catalans}
\description{
Dades de les localitats (tenen etiqueta \code{place}) que tenen alguna referència de l'administració (etiquetes \code{ref:idescat} o \code{ref:ine} als Països Catalans.
Les localitats que compleixen aquestes condicions però que ja són a la taula \code{\link{loc_admin_centre_municipis}}, \code{\link{municipis}} o \code{\link{comarques}}, s'ometen.
}
\usage{loc_ref}
\format{
  Un \code{data.frame} amb 4996 objectes amb per les següents 14 variables.
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
    \item{capital}{Etiqueta \code{capital}.}
    \item{admin_level}{Etiqueta \code{admin_level}.}
    \item{ref:idescat}{Etiqueta \code{ref:idescat}.}
    \item{ref:ine}{Etiqueta \code{ref:ine}.}
  }
}
\note{Els municipis de la Catalunya Nord tenen etiquetes \code{ref:INSEE} però els casos són en altres taules.}
\seealso{
  Altres bases de dades de referència:
  \code{\link{loc_admin_centre_municipis}}, \code{\link{PPCC}},
  \code{\link{municipis}}, \code{\link{comarques}}, \code{\link{territoris}}.
}
\concept{Bases de dades de referència}
\examples{
head(loc_ref)
}
\keyword{datasets}
