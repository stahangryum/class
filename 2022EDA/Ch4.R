`exam1 = read.table('class_EDA2022/dataset/exam1.txt', header = TRUE)
attach(exam1)
score_sort = sort(score)
score_sort
q.5 = score_sort[33]
q.25 = (1/3) * score_sort[16] + (2/3) * score_sort[17]
q.125 = (1/2) * score_sort[8] + (1/2) * score_sort[9]
q.0625 = (7/12) * score_sort[4] + (5/12) * score_sort[5]
quantile(score, c(1/2, 1/4, 1/8, 1/16), type = 8)
quantile(score, c(1/2, 3/4, 7/8, 15/16), type = 8) 
# type8이 머임?
q.5
q.25
q.125
q.0625
# 중위수 : p =0.5

# 4.2 분위수
quantile(score, c(1/2, 1/4, 1/8, 1/16), type=8)


# ggplot2
# qplot

install.packages('ggplot2')
library(ggplot2)

# 시각화할 데이터와 축을 지정
ggplot(data = iris, mapping = aes(x = Sepal.Length, y = Sepal.Width)) 
ggplot(data = iris, mapping = aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()
ggplot(data = iris, mapping = aes(x = Sepal.Length, y = Sepal.Width)) + geom_point(col = 'red', pch = 2, size=2)
ggplot(data = iris, mapping = aes(x = Sepal.Length, y = Sepal.Width)) + geom_line()


data = data.frame(v1 = rnorm(100), v2 = rnorm(100), v3 = rnorm(100), v4 = rnorm(100))

install.packages('reshape')
library(reshape)
meltData = melt(data)
boxplot(data = meltData, value ~ variable)

head(data)
melt(data)

p = ggplot(meltData, aes(factor(variable), value))
p + geom_boxplot() + facet_wrap(~variable, scale = 'free')

data(diamonds)
attach(diamonds)

ggplot(data=diamonds, aes(x=carat, y=price)) + geom_point(aes(col = clarity))
?ggplot









