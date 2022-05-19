z <- c(1,2,3,NA,5,NA,8)
mean(z)
sum(is.na(z))
sum(z, na.rm = TRUE)
z1 <- c(1,2,3,NA,5,NA,8)
z2 <- c(5,8,1,NA,3,NA,7)
z1[is.na(z1)] = 0
z1
z2


z3 = as.vector(na.omit(z2))
z3
class(iris)

x <- iris
x[1,2] <- NA
x[1,3] <- NA
x[2,3] <- NA
x[3,4] <- NA
head(x)

rowSums(is.na(x))
colSums(is.na(x))
sum(rowSums(is.na(x)))
sum(is.na(x))

complete.cases(x)
y <- x[complete.cases(x),]
head(y)

z <- x[!complete.cases(x),]
z











