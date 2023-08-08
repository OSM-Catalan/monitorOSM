\name{PPCC}
\alias{PPCC}
\docType{data}
\title{Països Catalans}
\description{
Dades dels Països Catalans a OSM.
}
\usage{PPCC}
\format{
  Un \code{data.frame} amb les dades de la relació «Països Catalans» per les següents 6 variables.
  \describe{
    \item{name:ca}{Etiqueta \code{name:ca}.}
    \item{osm_id}{Número identificador a OSM.}
    \item{osm_type}{Tipus d'objecte d'OSM.}
    \item{name}{Etiqueta \code{name}.}
    \item{wikipedia}{Etiqueta \code{wikipedia}.}
    \item{wikidata}{Etiqueta \code{wikidata}.}
  }
}
\seealso{
  \code{\link{municipis}}, \code{\link{comarques}}, \code{\link{territoris}}.
}
\examples{
PPCC[, 1:3]
}
\keyword{datasets}
