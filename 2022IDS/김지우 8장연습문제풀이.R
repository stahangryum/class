# 1


# A : 막대그래프
# B : 히스토그램


# 2
survey <- c(T, F, T, T, F, T, F, F, F, F)
colors()

sum(survey == T)
sum(survey == F)

barplot(c(sum(survey == T), sum(survey == F)),
        col = c('red', 'yellow'),
        names = c('Yes', 'No'))

# 3
data(mtcars)
barplot(table(mtcars$cyl),
        col = c('red', 'yellow', 'blue'),
        horiz = TRUE,
        ylab = '실린더의 수',
        main = '실린더 종류별 분포')

# 4
ds = hist(sleep$extra,
          main = 'Histogram of sleep',
          xlab = 'Increase in hours of sleep',
          breaks = 4)

# 5
ds <- table(mtcars$cyl, mtcars$gear) # 행 = cyl, 열 = gear

color <- c('tomato', 'salmon', 'peachpuff')

barplot(ds,
      beside = TRUE,
      col = color,
      main = 'Distribution of carburetors',
      xlab = 'Number of gear',
      ylab = 'Frequency',
      legend.text = c('cyl 4', 'cyl 6', 'cyl 8'),
      args.legend = list(x='topright', bty = 'n', inset =c(-0.25, 0)))

# 6
ds <- trees$Height
color.6 <- rep('#f1faee', 6)
color.6[3:5] <- '#e63946'


hist(ds,
     breaks = 6,
     col = color.6,
     main = 'Histogram of Black Cherry Trees',
     xlab = 'Height(ft)')

# 7
par(mfrow = c(2, 3), mar = c(5,4,4,3))
par(mfrow = c(1, 1), mar = c(5,4,4,2)+.1)

# 8
male <- c(6.9, 30.4, 80.4)
female <- c(4.9, 38.2, 82.7)
ds <- rbind(male, female)
colnames(ds) <- c('samsung', 'apple', 'huawei')

barplot(ds,
        beside = TRUE,
        horiz = TRUE,
        col = c('#ffe66d', '#00afb9'),
        main = '성별에 따른 브랜드 선호도',
        legend.text = c('여자', '남자'),
        args.legend = list(x='right', bty = 'n', inset =c(-0.25,0)),
        las = 1)

# 9
holyday <- c(14, 15, 15, 16, 14, 11, 12)
holyday.actual <- c(15, 35, 38, 36, 34, 32, 32)
ds <- rbind(holyday, holyday.actual)
colnames(ds) <- c('한국', '일본', '독일', '러시아', '미국', '프랑스', '호주')

barplot(ds,
        beside = TRUE,
        col = c('grey', 'skyblue'),
        main = '주요 국가별 공휴일 현황',
        xlab = '국가',
        legend.text = c('공휴일 수', '실제 쉬는 날'),
        args.legend = list(x='topleft', bty = 'n', inset =c(-0.2,-0.2)))


