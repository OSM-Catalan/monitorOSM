\name{comarques}
\alias{comarques}
\docType{data}
\title{Comarques dels Països Catalans}
\description{
Dades de les Comarques dels Països Catalans.
}
\usage{comarques}
\format{
  Un \code{data.frame} amb dades de les 95 comarques  per les següents 9 variables.
  \describe{
    \item{name:ca}{Etiqueta \code{name:ca}.}
    \item{regio}{Subdivisió ["Andorra", "CatNord", "Franja", "Illes", "Múrcia", "Principat", "PV"].}
    \item{osm_id}{Número identificador a OSM.}
    \item{osm_type}{Tipus d'objecte d'OSM.}
    \item{name}{Etiqueta \code{name}.}
    \item{wikipedia}{Etiqueta \code{wikipedia}.}
    \item{wikidata}{Etiqueta \code{wikidata}.}
    \item{admin_level}{Etiqueta \code{admin_level}.}
    \item{historic:admin_level}{Etiqueta \code{historic:admin_level}.}
  }
}
\note{
Les parròquies d'Andorra corresponen a comarques (\code{admin_level = "7"}) i s'inclouen a \code{comarques}.
}
\seealso{
  Altres bases de dades de referència:
  \code{\link{PPCC}}, \code{\link{municipis}}, \code{\link{territoris}},
  \code{\link{loc_admin_centre_municipis}}.
}
\concept{Bases de dades de referència}
\examples{
comarques[, c("name:ca", "regio", "name")]
}
\keyword{datasets}
