\name{mars}
\alias{mars}
\docType{data}
\title{Mars i oceans del mon}
\description{
Dades dels mars i oceans del mon, objectes amb etiquetes `place = ocean` o `place = sea`.
}
\usage{mars}
\format{
  Un \code{data.frame} amb dades dels 155 mars i oceans per les següents 8 variables.
  \describe{
    \item{name:ca}{Etiqueta \code{name:ca}.}
    \item{name}{Etiqueta \code{name}.}
    \item{osm_id}{Número identificador a OSM.}
    \item{osm_type}{Tipus d'objecte d'OSM.}
    \item{alt_name}{Etiqueta \code{alt_name}.}
    \item{alt_name:ca}{Etiqueta \code{name}.}
    \item{place}{Etiqueta \code{place}.}
    \item{wikidata}{Etiqueta \code{wikidata}.}
  }
}
\seealso{
  Altres bases de dades d'exotopònims de referència:
}
\concept{Bases de dades de referència}
\examples{
mars[, c("name:ca", "name", "wikidata")]
}
\keyword{datasets}
