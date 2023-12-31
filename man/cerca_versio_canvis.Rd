% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comprova_canvis_osm.R
\name{cerca_versio_canvis}
\alias{cerca_versio_canvis}
\title{Cerca les versions que introdueixen canvis}
\usage{
cerca_versio_canvis(x)
}
\arguments{
\item{x}{El resultat de \code{\link[=comprova_canvis_osm]{comprova_canvis_osm()}} o similar.}
}
\value{
Retorna una llista de les versions que introdueixen canvis per cada etiqueta.
}
\description{
Cerca les versions que introdueixen canvis
}
\examples{
\dontrun{
comarques_canviades <- comarques[, setdiff(names(comarques), "regio")]
comarques_canviades$name[1] <- "Malnom"
canvis <- comprova_canvis_osm(comarques_canviades)
versions_canvi <- cerca_versio_canvis(canvis)
versions_canvi
}
}
