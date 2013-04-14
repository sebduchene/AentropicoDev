\name{fun.t.test}
\alias{fun.t.test}
\title{
fun.t.test: Computing parametric test statistic for two samples
}
\description{
Compute parametric test statistic for two samples
}
\usage{ 
fun.t.test(x, y)
}
\arguments{
  \item{x}{
sample one
}
  \item{y}{
sample two
}
}
\details{
None
}
\value{
This function returns a vector with the summary of the t test statistic
}
\references{
None so far
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
result <- fun.t.test(a, b)
## The function is currently defined as
function (x, y) 
{
    m.x <- mean(x)
    m.y <- mean(y)
    sd.x <- sd(x)
    sd.y <- sd(y)
    deg.f <- 2 * length(x) - 2
    pooled.sd <- sqrt((sd.x^2 + sd.y^2)/2)
    t.stat <- (m.x - m.y)/(pooled.sd * sqrt(2/length(x)))
    p.val <- pt(t.stat, deg.f)
    res.data <- c(m.x, m.y, sd.x, sd.y, deg.f, pooled.sd, t.stat, 
        p.val)
    names(res.data) <- c("mean_X", "mean_Y", "sd_x", "sd_y", 
        "deg_freedom", "sd_pooled", "t_statistic", "P_value")
    return(res.data)
  }
}
\keyword{ None }
\keyword{ None }
