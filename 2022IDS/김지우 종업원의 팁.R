# Date : 2022/03/29
# 202115789 통계학과 김지우

install.packages('reshape2')
library(reshape2)

mean( tips[tips$time == 'Dinner', 'size'] ) # 저녁 팁 평균
mean( tips[tips$time == 'Lunch', 'size'] ) # 점심 팁 평균

mean( tips[tips$day == 'Sat', 'size'] ) # 토요일 전체 팁 평균
mean( tips[(tips$day == 'Sat')&(tips$time == 'Lunch'), 'size'] ) # 토요일 점심 팁 평균
mean( tips[(tips$day == 'Sat')&(tips$time == 'Dinner'), 'size'] ) # 토요일 저녁 팁 평균


mean( tips[tips$day == 'Sun', 'size'] ) # 일요일 전체 팁 평균
mean( tips[(tips$day == 'Sun')&(tips$time == 'Lunch'), 'size'] ) # 일요일 점심 팁 평균
mean( tips[(tips$day == 'Sun')&(tips$time == 'Dinner'), 'size'] ) # 일요일 저녁 팁 평균

## 토요일과 일요일에는 점심 팁이 존재하지 않으므로 저녁 팁의 평균이 전체 팁의 평균이다.

