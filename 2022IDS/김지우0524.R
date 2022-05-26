x <- 1:100
y <- sample(x, size = 10, replace = FALSE)
data(iris)

idx <- sample(1:nrow(iris), size = 50, replace = F)
iris_50 <- iris[idx, ]
dim(iris_50)
head(iris_50)

idx1 <- sample(1:nrow(iris))
idx1

set.seed(100)
sample(1:20, size = 5)
set.seed(100)

sample(1:20, size = 5)

x <- c('red', 'green', 'blue', 'black', 'white')
x

myCom = combn(x, 3)
myCom
ncol(myCom)
class(myCom)
nrow(myCom)
ncol(myCom) == 5*4 / 2

for (i in 1:ncol(myCom)){
  cat(myCom[,i], i, '\n')
}


library(carData)
data(KosteckiDillon)
str(KosteckiDillon)
tot_mean <- mean(KosteckiDillon$dos)
tot_mean

for (rate in (1:5)*0.1) {
  set.seed(100)
  idx <- sample(nrow(KosteckiDillon), nrow(KosteckiDillon)*rate)
  sam_data <- KosteckiDillon[idx,'dos'] # 샘플링 데이터 추출
  tmp_mean <- mean(sam_data) # 샘플링 데이터 평균
  cat('Diff:', rate, tot_mean-tmp_mean, '\n')
}






































































































