\name{territoris}
\alias{territoris}
\docType{data}
\title{Territoris dels Països Catalans}
\description{
Dades dels territoris dels Països Catalans.
}
\usage{territoris}
\format{
  Un \code{data.frame} amb dades dels 10 territoris per les següents 7 variables.
  \describe{
    \item{name:ca}{Etiqueta \code{name:ca}.}
    \item{regio}{Nom de la regió ["Andorra", "Aran", "CatNord", "Franja", "Illes", "Múrcia", "Principat", "PV"].}
    \item{osm_id}{Número identificador a OSM.}
    \item{osm_type}{Tipus d'objecte d'OSM.}
    \item{name}{Etiqueta \code{name}.}
    \item{wikipedia}{Etiqueta \code{wikipedia}.}
    \item{wikidata}{Etiqueta \code{wikidata}.}
  }
}
\seealso{
  \code{\link{municipis}}, \code{\link{comarques}}, \code{\link{PPCC}}.
}
\examples{
territoris[, c("regio", "name")]
}
\keyword{datasets}
