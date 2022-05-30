library(treemap)
library(carData)
head(Ericksen)

# 도시의 정보는 제외하고 주의 정보만 추출하여 저장합니다.
ds <- subset(Ericksen, city == 'state')
ds$stname <- rownames(ds)

# 나무그림을 그립니다.
# 타일의 면적은 빈곤율(poverty)로
# 타일의 색은 범죄건수(crime)로 지정합니다.
treemap(ds,
        index=c('stname'), # 타일에 주 이름 표기
        vSize='poverty', # 타일의 크기
        vColor='crime', # 타일의 컬러
        type='value', # 타일 컬러링 방법
        title='USA states poverty and crime' ) # 나무그림의 제목

# 나무그림을 그립니다.
# 타일의 면적은 소규모 다중시설 거주율(housing)로
# 타일의 색은 소수 인종 비율(minority)로 지정합니다.
treemap(ds,
        index=c('stname'), # 타일에 주 이름 표기
        vSize='housing', # 타일의 크기
        vColor='minority', # 타일의 컬러
        type='value', # 타일 컬러링 방법
        palette=heat.colors(nrow(ds)), # 컬러 팔레트
        title='USA states poverty and crime' ) # 나무그림의 제목
