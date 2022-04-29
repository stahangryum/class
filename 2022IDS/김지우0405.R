a=10
b=20

setwd("C:/Users/woo/Desktop/Project/class_2022IDS")

sink('result.txt', append = TRUE)
cat(a, b, a+b, '\n')
cat('Good Morning')
sink()
cat('Hello', '\n')

air = read.table('data/airquality.txt', header = TRUE, sep = ' ')
air

head(air)
class(air)
str(air)

sink('bmi.txt', append = TRUE)
library(xlsx)
my.iris <- subset(iris, Species == 'setosa')
write.xlsx(my.iris, 'my_iris.xlsx', row.names = F)
library(svDialogs)
h = dlgInput('Input height (m)')$res
w = dlgInput('Input weight (kg)')$res
h = as.numeric(h)
w = as.numeric(w)
bmi = w/(h^2)
cat('\n', w, h, bmi, '\n')
sink()

result = read.table('bmi.txt')
result
class(result)
names(result) = c('w', 'h', 'BMI')
write.table(result, 'bmi_new.txt', row.names=FALSE)



