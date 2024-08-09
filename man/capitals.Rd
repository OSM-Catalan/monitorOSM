\name{capitals}
\alias{capitals}
\docType{data}
\title{Capitals d'estats del mon}
\description{
Dades de les capitals d'estats del mon, objectes amb etiquetes `capital = 2`, `capital = yes` o nodes amb el rol
d'`admin_centre` de de relacions d'estats.
}
\usage{capitals}
\format{
  Un \code{data.frame} amb dades de les 155 capitals per les següents 8 variables.
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
  \code{\link{estats}}, \code{\link{mars}}.
}
\concept{Bases de dades de referència}
\examples{
capitals[, c("name:ca", "name", "wikidata")]
}
\keyword{datasets}
