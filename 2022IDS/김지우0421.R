data(cars)
dist = cars[, 2]
boxplot(dist, main = '제동거리')
boxplot.stats(dist)

data(iris)
levels(iris$Species)
boxplot(Petal.Length ~ Species,
        data = iris,
        col = rainbow(3))

data(mtcars)
class(mtcars)

par(mfrow = c(2,2))
boxplot(mtcars$mpg)
boxplot(mtcars$mpg ~ mtcars$gear)
boxplot(mtcars$mpg ~ mtcars$vs)
boxplot(mtcars$mpg ~ mtcars$am)
#grp <- rep('high', nrow(mtcars))
#grp[mtcars$wt < mean(mtcars$wt)] <- 'low'
#boxplot(mtcars$hp ~ grp)

par(mfrow = c(1,1))
wt = mtcars$wt
mpg = mtcars$mpg
plot(wt, mpg,
     col = 'red',
     pch = 11)

plot(mtcars$mpg ~ mtcars$wt,
     col = 'red',
     pch = 11)

plot(mtcars[, c('mpg', 'disp', 'drat', 'wt')])
