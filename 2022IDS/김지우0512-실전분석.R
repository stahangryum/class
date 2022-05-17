install.packages('Ecdat')
library(Ecdat)
head(Hdma)
str(Hdma)
Hdma$deny
tbl <- table(Hdma$deny)
tbl <- tbl / sum(tbl)
tbl
names(tbl) <- c('승인', '거절')
barplot(tbl, main = '주택담보대출 승인/거절',
        col = c('green', 'yellow'),
        ylim = c(0, 1),
        ylab = '비율')

hist(Hdma$lvr, main = '주택가격대비 대출금 비율',
     col = rainbow(10))


black_yn <- table(Hdma$black)
black_deney <- sum((Hdma$black == 'yes') & (Hdma$deny == 'yes')) / black_yn['yes']
non_black_deney <- sum((Hdma$black == 'no')&(Hdma$deny == 'yes')) / black.yn['no']
cat('흑인, 비흑인 거절률', black_deney, non_black_deney)

df <- Hdma[,c('dir','hir','ccs','mcs')]
point_col <- c('green', 'red')
plot(df, col = point_col[Hdma$deny])
cor(df) 
# dir과 hir의 상관계수는 0.78로 꽤 높다.
# 그래프를 관찰하니 양의 상관관계가 존재함을 육안적으로 알 수 있다.




