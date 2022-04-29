#1 

a <- rep(1,5)
b <- seq(1,5)
c <- rep(5,5)

matrix(c(a,b,c), byrow = T, nrow = 5)

#2

a <- rnorm(80, 2.4, 0.4)
b <- rnorm(40, 3.0, 0.4)
c <- rnorm(20, 2.9, 0.4)
d <- rnorm(20, 3.6, 0.4)

group <- factor(c(rep(1, 80), rep(2, 40), rep(3, 20), rep(4, 20)))
group

levels(group) = c('A', 'B', 'C', 'D')

boxplot(c(a,b,c,d) ~ group, width = table(group), ylab = 'GPA')

#3

z <- rbinom(400, 1, 0.5)


x <- rnorm(400, mean = -2 + (z == 1)*4, sd = 1)

cbind(z, x)
table(z)
hist(x)

#4

#5

x <- rnorm(100, mean = 0, sd = 1)
hist(abs(x))
qqnorm(abs(x))



