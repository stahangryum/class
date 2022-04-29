O = c(100, 350, 400, 150)
E = c(125, 375, 375, 125)

sum((O-E)^2 / E) # 검정통계량

# 분위수는 p_k = (k - 1/3) / (n - 1/3)

par(mfrow = c(1,2))

x <- seq(-3, 3, 0.01)
y <- dnorm(x)
plot(x, y, type = 'l', ylim = c(0, 0.5), ylab = 'density')

p <- seq(0.001, 0.999, 0.002)
z <- qnorm(p, mean = 0, sd = 1)
plot(p, z, type = 'l')
abline(c(0,0), lty = 'dotted')

# plot(x, pnorm(x), type = 'l')


# 변수가 정규분포를 잘 따르는가를 보자
# - 방법 1
# 수평축에 표준정규분포 N(0,1)로부터 자료 길이의 분위수 z를 넣고 수직축에는 자료를 정렬하여 넣는다.
# - 방법 2
# R의 정규확률 플롯 함수인 qqnorm()을 이용한다.

par(mfrow = c(1,2))

darwin <- c(49, -67, 8, 16, 6, 23, 28, 41, 14, 29, 56, 24, 75, 60, -48)
p <- ((1:length(drawin))-1/3)/(length(drawin)+1/3)
z <- qnorm(p)
plot(z, sort(darwin), xlim = c(-2, 2), ylim = c(-75, 75), main = 'Darwin') 

qqnorm(darwin, xlim = c(-2, 2), ylim = c(-75, 75))

# 왼쪽 두 점이 대체적인 경향에서 완전히 벗어나 있다.
# 두 점은 특이점으로 보인다. 아니면 이 자료가 정규분포를 잘 따르지 않는 경우로 볼 수도 있을 것이다.
# 전자를 다른다면 왼쪽의 2개 특이점을 빼고 보아야 하므로 경향선의 절편과 기울기로부터 이 자료의
# 평균과 표준편차가 각각 30과 20 정도임을 알 수 있다.



x <- rexp(100, 0.5)

# P-P Plot
qqnorm(x, main = 'P-P Plot')

# Q-Q Plot
ts <- rnorm(1000, mean(x), sd(x))
qqplot(ts, x)
abline(0,1)

# Normality Plot
ad.test(x)
