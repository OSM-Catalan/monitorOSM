\name{PPCC}
\alias{PPCC}
\docType{data}
\title{Països Catalans}
\description{
Dades dels Països Catalans a OSM.
}
\usage{PPCC}
\format{
  Un \code{data.frame} amb les dades de la relació «Països Catalans» per les següents 5 variables.
  \describe{
    \item{name:ca}{Etiqueta \code{name:ca}.}
    \item{id}{Número identificador a OSM.}
    \item{type}{Tipus d'objecte d'OSM.}
    \item{wikidata}{Etiqueta \code{wikidata}.}
    \item{name}{Etiqueta \code{name}.}
  }
}
\seealso{
  \code{\link{municipis}}, \code{\link{comarques}}, \code{\link{territoris}}.
}
\examples{
PPCC[, 1:3]
}
\keyword{datasets}
