data(pressure)
plot(pressure$temperature,
     pressure$pressure,
     main = '온도와 기압')

data(cars)
plot(cars$speed,
     cars$dist,
     main = '자동차 속도와 제동거리',
     xlab = '속도',
     ylab = '제동거리',
)

cor(cars$speed, cars$dist)

# 다중변수 사이의 상관관계

st <- data.frame(state.x77)
head(st)

plot(st)
cor(st)

# LAB. 경제지표 데이터 분석하기

str(longley)
head(longley)

df <- longley[,c('GNP', 'Unemployed', 'Armed.Forces', 'Population', 'Employed')]
df
plot(df)
cor(df)







