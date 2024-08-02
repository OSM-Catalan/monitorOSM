\name{estats}
\alias{estats}
\docType{data}
\title{Estats del mon}
\description{
Dades de les Estats mon, relacions amb etiquetes `admin_centre = 2` i `boundary = administrative`.
}
\usage{estats}
\format{
  Un \code{data.frame} amb dades dels 243 estats  per les següents 9 variables.
  \describe{
    \item{name:ca}{Etiqueta \code{name:ca}.}
    \item{name}{Etiqueta \code{name}.}
    \item{osm_id}{Número identificador a OSM.}
    \item{osm_type}{Tipus d'objecte d'OSM.}
    \item{alt_name}{Etiqueta \code{alt_name}.}
    \item{alt_name:ca}{Etiqueta \code{name}.}
    \item{long_name}{Etiqueta \code{alt_name:ca}.}
    \item{native_name}{Etiqueta \code{native_name}.}      
    \item{official_name}{Etiqueta \code{official_name}.}
    \item{official_name:ca}{Etiqueta \code{official_name:ca}.}
    \item{old_name}{Etiqueta \code{old_name}.}
    \item{old_name:ca}{Etiqueta \code{old_name:ca}.}
    \item{old_official_name}{Etiqueta \code{old_official_name}.}
    \item{old_official_name:ca}{Etiqueta \code{old_official_name:ca}.}
    \item{short_name}{Etiqueta \code{short_name}.}
    \item{short_name:ca}{Etiqueta \code{short_name:ca}.}
    \item{wikidata}{Etiqueta \code{wikidata}.}
  }
}
\seealso{
  Altres bases de dades de referència:
  \code{\link{PPCC}}, \code{\link{municipis}}, \code{\link{territoris}},
  \code{\link{loc_admin_centre_municipis}}.
}
\concept{Bases de dades de referència}
\examples{
estats[, c("name:ca", "name", "wikidata")]
}
\keyword{datasets}
