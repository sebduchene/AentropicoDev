\name{plot.t.test.dat}
\alias{plot.t.test.dat}
\title{
plot.t.test.dat: plotting the histograms and density curves for two samples
}
\description{
Base R histogram and density plot for two samples
}
\usage{
plot.t.test.dat(x, y)
}
\arguments{

  \item{x}{
sample one
}
  \item{y}{
sample two}
}
\details{
None
}
\value{
This function produces a plot in the R graphical device
}
\references{
None
}
\author{
Sebastian Duchene at Aentropico engineering blog
}
\note{
None so far
}

\seealso{
None so far
}
\examples{
set.seed(1234)
a <- rnorm(100, 3, 4)
b <- rnorm(100, 5, 1)
plot.t.test.dat(a, b)
## The function is currently defined as
function (x, y) 
{
    hist(x, col = rgb(0, 0, 0.8, 0.5), xlim = c(min(c(min(x), 
        min(y))), max(c(max(x), max(y)))), freq = F, xlab = "")
    legend(x = max(x) * 0.95, y = 0.14, legend = c("x", "y"), 
        fill = c(rgb(0, 0, 0.8, 0.5), rgb(0.8, 0, 0, 0.5)))
    lines(density(x), lwd = 2, col = rgb(0, 0, 0.8, 0.5))
    hist(y, col = rgb(0.8, 0, 0, 0.5), add = T, freq = F)
    lines(density(y), lwd = 2, col = rgb(0.8, 0, 0, 0.5))
  }
}
\keyword{ None }
\keyword{ None }
