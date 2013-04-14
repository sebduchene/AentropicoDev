fun.t.test <-
function(x, y){
m.x <- mean(x)
m.y <- mean(y)
sd.x <- sd(x)
sd.y <- sd(y)
deg.f <- 2*length(x) - 2
pooled.sd <- sqrt((sd.x^2 + sd.y^2)/2)
t.stat <- (m.x - m.y) / (pooled.sd * sqrt(2/length(x)))
p.val <- pt(t.stat, deg.f)
res.data <- c(m.x, m.y, sd.x, sd.y, deg.f, pooled.sd, t.stat, p.val)
names(res.data) <- c("mean_X", "mean_Y", "sd_x", "sd_y", "deg_freedom", "sd_pooled", "t_statistic", "P_value") 

return(res.data)
}
