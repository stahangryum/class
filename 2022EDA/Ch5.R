library(MASS)
data(Animals)
attach(Animals)
par(mfrow=c(1,2))

plot(brain~body, xlim = c(0, 1000000))


library(ggplot2)
type = rep(1:3, c(11, 11, 11))
data<-c(387, 470,497,537,540,620,760,845,895,1020,1050, 6060,7600,7900,8260,8900,9250,9650,9830,10200,11000,15500, 18900,22300,27800,28100,28800,29000,31400,32800,34600,39500,43300)

plank <- data.frame(type, data)
plank

p <- ggplot(plank, aes(factor(type),data))
p+geom_boxplot()
p+geom_boxplot()+geom_jitter()
p+geom_boxplot()+coord_flip()
p+geom_boxplot(aes(fill=type))
