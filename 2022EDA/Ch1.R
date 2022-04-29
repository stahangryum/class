setwd('C:/Users/godgk/Desktop/Project/class_EDA2022')

geyser = read.table("dataset/geyser299.txt", header = T)
attach(geyser)
head(duration)
head(waiting)

plot(duration ~ waiting, xlim = c(40, 110), ylim = c(0, 6),
     xlab = 'waiting time (min)', ylab = 'duration (min)',
     main = "Geyser", type = "n")
text(x = waiting, y = duration, cex = 0.75)

# R 그래픽스: 다중 프레임

x1 <- rbeta(400, 1, 1)
x2 <- rbeta(400, 2, 2)
x4 <- rbeta(400, 4, 4)
x8 <- rbeta(400, 8 ,8)
par(mfrow = c(2,2))
hist(x1, breaks = seq(0, 1, 0.1), freq = F, ylim = c(0,3))
hist(x2, breaks = seq(0, 1, 0.1), freq = F, ylim = c(0,3))
hist(x4, breaks = seq(0, 1, 0.1), freq = F, ylim = c(0,3))
hist(x8, breaks = seq(0, 1, 0.1), freq = F, ylim = c(0,3))

# 그래프를 겹쳐 그리기

par(mfrow = c(1,1))
x = rt(1000, 5)
hist(x, freq = F, xlim = c(-5, 5), ylim = c(0, 0.4),
     nclass = 20, xlab = "simulated observations",
     main = "t (df 5)")
m = mean(x)
s = sd(x)
curve(dnorm(x, m, s), add = T)

# 사용자 정의 함수, 생략

# 데이터 세트 병합하기, 생략

# 데이터 세트 분활하기
gr = c(1,2,1,1,2)
gr = factor(gr)
levels(gr) = c('low', 'high')
score = c(98, 82, 45, 23, 74)
score
score.split = split(score, gr)
score.split
class(score.split)

# 외부 데이터 파일 읽기
library(foreign) #SPSS, SAS 데이터 파일을 읽을 수 있다.
ee = read.spss('dataset/EEstock2000.sav')
str(ee)

# 작업 관리
ls()
rm(ee)
ls()

str(geyser)
geyser.x = cbind(geyser, rbinom(n = 299, size = 1, prob = 0.5))
ls()
geyser.x
write.table(geyser.x, "geyser1.txt")
write.csv(geyser.x, "geyser2.csv")

sink('geyser.out')
summary(geyser.x)
sink()

print('202115789 김지우')
