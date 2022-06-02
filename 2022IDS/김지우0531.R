# (1) 데이터 확인

head(airquality)

ds <- airquality[complete.cases(airquality),]
# 결측값 제거

unique(ds$Month)
# 월 확인

# (2) 월별 오존농도 분포

# 월별 평균 오존농도 계산

month.avg <- aggregate(ds$Ozone,
                       by=list(ds$Month),median)[2]

month.avg

# 데이터프레임을 벡터로 변환

month.avg <- month.avg[,1]
# dataframe을 벡터로

names(month.avg) <- 5:9 # 5월~9월

# 평균오존농도 순위 계산(내림차순)

odr <- rank(-month.avg)

odr

# 월별 오존농도 분포
boxplot(Ozone ~ Month, data = ds)
boxplot(Ozone~Month, data=ds,
        col=heat.colors(5)[odr], # 상자의 색 지정
        ylim=c(0,170),
        ylab='오존농도',
        xlab='월',
        main='여름철 오존농도')


# install.packages('fmsb')
library(fmsb)
# (1) 데이터 준비
score <- c(80,60,95,85,40)
max.score <- rep(100,5)
# 100을 5회 반복
min.score <- rep(0,5)
# 0을 5회 반복
ds <- rbind(max.score,min.score, score)
ds <- data.frame(ds)
# 매트릭스를 데이터프레임으로
colnames(ds) <- c('국어','영어','수학','물리','음악')
ds
# (2) 방사형 차트
radarchart(ds,
           pcol = 'dark green',
           seg = 4,
           axistype = 1)

