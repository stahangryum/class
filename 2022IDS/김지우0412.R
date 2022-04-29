favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 'SUMMER',
              'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')

ds = table(favorite)
barplot(ds, 
        main = 'favorite season',
        col = 'slategray4')

barplot(ds,
        main = 'favorite season',
        col = c('blue', 'red', 'green', 'yellow'))

barplot(ds,
        main = 'favorite season',
        col = rainbow(4),
        xlab = '계절',
        ylab = '빈도수',
        horiz = TRUE)

barplot(ds,
        main = 'favorite season',
        col = rainbow(4),
        xlab = '계절',
        ylab = '빈도수',
        names = c('FA', 'SP', 'SU', 'WI'))

# las옵션
# 0 : 축 방향(기본값)
# 1 : 수평 방향(축 방향과 상관 없음)
# 2 : 축을 기준으로 수직 방향
# 3 : 수직 방향(축 방향과 상관 없음)




barplot(1:100, col = rainbow(100))

# 중첩 그룹의  막대그래프

age.A <- c(13709, 10974, 7979, 5000, 4250)
age.B <- c(17540, 29701, 36209, 33947, 24487)
age.C <- c(991, 2195, 5366, 12980, 19007)

ds <- rbind(age.A, age.B, age.C)
colnames(ds) <- c('1970','1990','2010','2030','2050')

barplot(ds, main= '인구 추정',
        col = rainbow(3))

barplot(ds, main = '인구 추정',
        col = rainbow(3),
        beside = TRUE)

barplot(ds, main = '인구 추정',
        col = rainbow(3),
        beside = TRUE,
        legend.text = TRUE)

barplot(ds, main = '인구 추정',
        col = rainbow(3),
        beside = TRUE,
        legend.text = c('0~14세', '15~65세', '65세 이상'))

par(mfrow = c(1,1), mar=c(5,5,5,7))
barplot(ds, main = '인구 추정',
        col = rainbow(3),
        beside = TRUE,
        legend.text = c('0~14세', '15~65세', '65세 이상'),
        args.legend = list(x= 'topright', bty = 'n', inset = c(-0.25,0)))

par(mfrow = c(1,1), mar = c())









