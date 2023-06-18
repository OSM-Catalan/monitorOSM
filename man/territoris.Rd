\name{territoris}
\alias{territoris}
\docType{data}
\title{Territoris dels Països Catalans}
\description{
Dades dels territoris dels Països Catalans.
}
\usage{territoris}
\format{
  Un \code{data.frame} amb dades dels 8 territoris per les següents 6 variables.
  \describe{
    \item{name:ca}{Etiqueta \code{name:ca}.}
    \item{regio}{Nom de la regió ["Principat", "Illes", "País Valencià", "Catalunya Nord", "Franja de Ponent", "l'Alguer", "el Carxe", "Andorra"].}
    \item{id}{Número identificador a OSM.}
    \item{type}{Tipus d'objecte d'OSM.}
    \item{wikidata}{Etiqueta \code{wikidata}.}
    \item{name}{Etiqueta \code{name}.}
  }
}
\seealso{
  \code{\link{municipis}}, \code{\link{comarques}}, \code{\link{PPCC}}.
}
\examples{
territoris[, c("regio", "name")]
}
\keyword{datasets}
