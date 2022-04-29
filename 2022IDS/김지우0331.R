# 김지우 0331

install.packages('svDialogs')
library(svDialogs)

user_input <- dlgInput('Input income')$res
income = as.numeric(user_input)
tax = income * 0.05
tax
cat('세금: ', tax)

# BMI 계산

weight <- dlgInput('Input weight(kg)')$res
height <- dlgInput('Input height(m)')$res

weight <- as.numeric(weight)
height <- as.numeric(height)


BMI = weight/height^2
cat(weight, height, BMI)

# 파일 이용한 입력

getwd()
air = read.csv('data/airquality.csv', header = T)
is.data.frame(air)
class(air) # csv를 불러오면 데이터 프레임으로 저장됨을 알 수 있다.
str(air)

data(iris)
my_iris = subset(iris, Species == 'setosa')
my_iris
write.csv(my_iris, 'my_iris.csv', row.names = F)


install.packages('xlsx')
library(xlsx)

air = read.xlsx('data/airquality.xlsx',
                header = T,
                sheetIndex=1)

class(air)
write.xlsx(my_iris, 'my_iris.xlsx', row.names = F)

# LAB. 다이아몬드 정보 제공하기
install.packages('ggplot2')
library(ggplot2)
data(diamonds)
str(diamonds)
class(diamonds)

diamonds_new = subset(diamonds, cut == 'Premium' & carat >= 2)
write.csv(diamonds_new, 'shiny_diamonds.csv', row.names = F)

