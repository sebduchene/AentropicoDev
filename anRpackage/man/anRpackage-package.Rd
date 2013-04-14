\name{mypackage-package}
\alias{mypackage-package}
\alias{mypackage}
\docType{package}
\title{
mypackage: an R package with some example functions
}
\description{
This package is a basic test to learn how to build R extensions
}
\details{
\tabular{ll}{
Package: \tab mypackage\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-03-03\cr
License: \tab GNU\cr
}
The package has two functions for parametric statistical testing and ploting
}
\author{
Aentropico engineering blog

Maintainer: Aentropico <sebastian.duchene6@gmail.com>
Aentropico engineering blog
}
\references{
None
}
\keyword{ package }
\seealso{
None
}
\examples{
# We can run an example here
set.seed(1234)
a <- rnorm(100, 3, 4)
b <- rnorm(100, 5, 1)
result <- fun.t.test(a, b)

plot.t.test.dat(a, b)
}
