
# Class : 데이터과학기초 2분반
# Date : 2022/03/24
# 202115789 통계학과 김지우


# (1)
USD_data <- c(12289, 8921, 17589, 5389, 12642, 9463)
KRW_data <- c(1460, 1060, 2091, 652, 1502, 1125)
company_names <- c('마이크로소프트', '구글', '사우디아람코',
                   '알리바바', '애플', '아마존')

corp = matrix(c(USD_data, KRW_data), 
              ncol = 2)
corp

rownames(corp) <- company_names # 행 이름
colnames(corp) <- c('USD', 'KRW') # 열 이름
corp

# (2)
colSums(corp) # 열별 합계
colMeans(corp) # 열별 평균

# (3)
corp <- data.frame(corp) # 자료구조를 matrix에서 data.frame으로 변경
subset(corp, KRW >= 1500)

# (4)
states <- c('미국', '미국', '사우디', '중국', '미국', '미국')
USD_ranking <- rank(-USD_data) # USD 시가 총액이 높을수록 순위는 1에 가까움
corp.exp <- data.frame(company_names, states, USD_ranking)
names(corp.exp) = c('기업', '국가', '순위')
corp.exp

