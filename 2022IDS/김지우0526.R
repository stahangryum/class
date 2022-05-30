install.packages('treemap')
library(treemap)
treemap()

data(GNI2014)
View(GNI2014)

treemap(GNI2014,
        index=c('continent','iso3'), # 계층 구조 설정(대륙-국가)
        vSize='population', # 타일의 크기
        vColor='GNI', # 타일의 컬러
        type='value', # 타일 컬러링 방법
        bg.labels='yellow', # 레이블의 배경색
        title="World's GNI")

library(treemap) # treemap 패키지 불러오기
st <- data.frame(state.x77) # 매트릭스를 데이터프레임으로 변환
# 주의 이름 열 stname을 추가
st <- data.frame(st, stname=rownames(st))
treemap(st,
        index=c('stname'), # 타일에 주 이름 표기
        vSize='Area', # 타일의 크기
        vColor='Income', # 타일의 컬러
        type='value', # 타일 컬러링 방법
        title='USA states area and income' ) 


ds <- read.csv('data/seoul_temp_2017.csv')
ds
dim(ds)
head(ds)
# (2) 서울의 1년 기온 분포
summary(ds$avg_temp)
boxplot(ds$avg_temp,
        col='green',
ylim=c(-20,40),
xlab='서울 1년 기온',
        ylab='기온')
        
# (3) 월별 기온 분포
# 월별 평균기온 계산
month.avg <- aggregate(ds$avg_temp,

by=list(ds$month),median)[2]
month.avg



month.avg <- month.avg[,1] # dataframe을 벡터로
names(month.avg) <- 1:12 # 1월~12월
# 평균기온 순위 계산 (내림차순)
odr <- rank(-month.avg)
odr
# 월별 기온 분포
boxplot(avg_temp~month, 
        data=ds,
        col=heat.colors(12)[odr], # 상자의 색을 지정
        ylim=c(-20,40),
        ylab='기온',
        xlab='월',
        main='서울시 월별 기온 분포(2017)')















