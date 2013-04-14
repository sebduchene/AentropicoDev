plot.t.test.dat <-
function(x, y){
hist(x, col = rgb(0, 0, 0.8, 0.5), xlim = c(min(c(min(x), min(y))), max(c(max(x), max(y)))), freq = F, xlab = "")
legend(x = max(x)*0.95, y = 0.14 , legend=c("x", "y"), fill=c(rgb(0, 0, 0.8, 0.5), rgb(0.8, 0, 0, 0.5)))
lines(density(x), lwd = 2, col = rgb(0, 0, 0.8, 0.5))
hist(y, col = rgb(0.8, 0, 0, 0.5), add = T, freq = F)
lines(density(y), lwd = 2, col = rgb(0.8, 0, 0, 0.5))
}
