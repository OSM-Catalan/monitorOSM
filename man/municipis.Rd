\name{municipis}
\alias{municipis}
\docType{data}
\title{Municipis dels Països Catalans}
\description{
Dades dels municipis dels Països Catalans.
}
\details{
Alguns noms de municipis tenen duplicats. Per construir noms únics (p. ex. per generar noms de fitxers), podeu usar \code{paste0(municipis$regio, "-", municipis$name).}
}
\usage{municipis}
\format{
  Un \code{data.frame} amb dades dels 1670 municipis per les següents 9 variables.
  \describe{
    \item{name:ca}{Etiqueta \code{name:ca}.}
    \item{regio}{Subdivisió ["Andorra", "CatNord", "Franja", "Illes", "Múrcia", "Principat", "PV", "Sardenya"].}
    \item{comarca}{Etiqueta \code{name:ca} de la comarca on es troba el municipi.}
    \item{id}{Número identificador a OSM.}
    \item{type}{Tipus d'objecte d'OSM.}
    \item{wikidata}{Etiqueta \code{wikidata}.}
    \item{name}{Etiqueta \code{name}.}
    \item{admin_level}{Etiqueta \code{admin_level}.}
    \item{comarca.id}{Número identificador a OSM de la comarca on es troba el municipi.}
  }
}
\seealso{
  \code{\link{PPCC}}, \code{\link{comarques}}, \code{\link{territoris}}.
}
\examples{
municipis[, c("name:ca", "regio", "name")]
}
\keyword{datasets}
