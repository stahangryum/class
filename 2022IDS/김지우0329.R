
iris
class(iris)
dim(iris)
colnames(iris)
state.x77
class(state.x77)

is.matrix(iris)
is.matrix(state.x77)
is.data.frame(iris)
is.data.frame(state.x77)

a = iris$Species
b = iris[,5]
class(b)
class('trees')

install.packages('reshape2')
library(reshape2)

data(tips)
class(tips)
tips
str(tips)
tips$day
table(tips$day)
