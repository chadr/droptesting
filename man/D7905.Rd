\name{D7905}
\alias{D7905}
\docType{data}
\title{Historical Non-Truncated Data}
\description{
Historical drop test data that was not truncated by the testers. Useful for
comparing to modern truncated test methods and simularion output.
}
\usage{data("D7905")}
\format{
  A data frame with 10 observations on the following 2 variables.
  \describe{
    \item{\code{P}}{a numeric vector}
    \item{\code{SD}}{a numeric vector}
  }
}
\source{
NASA Technical Note NASA-TN D-7905. (1970)
Written by J. B. Gayle.
\url{https://ntrs.nasa.gov/archive/nasa/casi.ntrs.nasa.gov/19750014413.pdf}
}
\examples{
data(D7905)
## maybe str(D7905) ; plot(D7905) ...
}
\keyword{datasets}