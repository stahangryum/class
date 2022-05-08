# 단일변수 범주형 데이터 분석

install.packages('carData')
library(carData)

## 데이터 준비 
room_class <- TitanicSurvival$passengerClass
room_class

## 도수분포 계산
tbl <- table(room_class)
tbl
sum(tbl) # 전체 탑승객수

## 막대그래프 작성
barplot(tbl, main = '선실별 탑승객',
        xlab = '선실 등급',
        ylab = '탑승객 수',
        col = c('blue', 'green', 'yellow'))

## 원그래프 작성
tbl/sum(tbl)
par(mar = c(1,1,4,1))
pie(tbl, main = '선실별 탑승객',
    col = c('blue', 'green', 'yellow'))
par(mar = c(5.1, 4.1, 4.1, 2.1))

# 단일변수 수치형 데이터 분석
# 미국의 주별 고등학교 졸업률 분석하기

## 데이터 준비
grad <- state.x77[, 'HS Grad']
grad

## 사분위수
summary(grad)
var(grad) # 분산
sd(grad) # 표준편차

## 히스토그램
hist(grad, main = '주별 졸업률',
     xlab = '졸업률',
     ylab = '주의 개수',
     col = 'orange')

## 상자그림
boxplot(grad, main = '주별 졸업률',
        col = 'orange')

## 졸업률이 가장 낮은 주
idx <- which(grad == min(grad))
grad[idx]

## 졸업률이 가장 높은 주
idx <- which(grad == max(grad))
grad[idx]  

## 졸업률이 평균 이하인 주
idx <- which(grad <= mean(grad))
grad[idx]  
  
  
  
  
  
  
  
  
  
  
  
  










