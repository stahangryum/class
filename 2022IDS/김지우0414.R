age.A <- c(13709, 10974, 7979, 5000, 4250)

age.B <- c(17540, 29701, 36209, 33947, 24487)

age.C <- c(991, 2195, 5366, 12980, 19007)

ds <- rbind(age.A, age.B, age.C)

colnames(ds) <- c('1970','1990','2010','2030','2050')

ds

# 그래프 작성

par(mfrow = c(1,1), mar = c(5,5,5,10))

barplot(ds, main='인구 추정',
        col=c('green', 'blue', 'yellow'),
        beside = TRUE,
        legend.text = TRUE,
        args.legend = list(x='topright', bty='y',
                          inset=c(-0.25, 0.5)))


data(cars)
dist = cars[, 2]
hist(dist)

head(cars)


result <- hist(dist, # data
     main='Histogram for 제동거리', # 제목
     xlab ='제동거리', # x축 레이블
     ylab='빈도수', # y축 레이블
     border='blue', # 막대 테두리색
     col='green', # 막대 색
     las=1, # x축 글씨 방향(0~3)
     breaks=10) # 막대 개수 조절

freq = result$counts
freq

names(freq) = result$breaks[-1]
freq

install.packages('Stat2Data')
library(Stat2Data)
data(Diamonds)
ds <- Diamonds$PricePerCt
hist(ds)

myCol = rep('#a8dadc', 9)
myCol[3] <- '#1d3557'
hist(ds,
     xlab = '캐럿당 가격($)', ylab = '빈도수',
     las = 1,
     col = myCol,
     border = 'red')


par(mfrow=c(2,2), mar=c(3,3,4,2))
# 화면 분할(2x2)

hist(iris$Sepal.Length, # 그래프 1
     main='Sepal.Length',
    col='orange')

barplot(table(mtcars$cyl), # 그래프 2
        
        main='mtcars',

        col=c('red','green','blue’))

barplot(table(mtcars$gear), # 그래프 3
        
        main='mtcars',

        col=rainbow(3), # 레인보우 팔레트 사용

        horiz=TRUE)

        pie(table(mtcars$cyl), # 그래프 4

        main='mtcars',
        
        col=topo.colors(3),# topo 팔레트 사용
        
        radius=2)

par(mfrow=c(1,1), mar=c(5,4,4,2)+.1)# 화면 분할 취소

