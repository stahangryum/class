# 2022-03-17


# 3장
sales <- c(640, 720, 680, 540)
names(sales) <- c('M1', 'M2', 'M3', 'M4')

sales
sales[1]
sales['M2']
sales[c('M1', 'M4')]

v1 = c(1,5,7,8,9)
v1
v1[2] = 3
v1
v1[c(1,5)] = c(10, 20)
v1
v1 = c(100, 200, 300)
v1

# LAB. 적금 만기 금액 계산하기
customer <- c('kim', 'lee', 'park', 'choi', 'seo')
deposit = c(5000000, 4500000, 4000000, 5500000, 6000000)
rate = c(3.5, 3, 4, 5, 4.5)
period = c(2,2,5,7,4)
names(deposit) = customer
names(rate) = customer
names(period) = customer

last = deposit*(1+rate/100)**period
last
last['kim']
last['park']

# 함수
d = c(1, 7, 4, 2, 3)
sort(d)

st = paste('good', 'morning', sep=' , ')
a = ' 나의 나이는'
b = 20
c = ' 입니다 ' 
paste(a,b,c, sep = ' ')

a = 1:12
b = '월'
c = paste(a, b, sep = ' ')
c

# 4장

d = c(1,4,3,7,8)
d
2*d
3*d + 4
x = c(1,2,3,4)
y = c('a',6,7,8)
x+y

y = c(5,6,7,8)
x+y
m = c(x,y)
m
n = c(y,x)
n
p = c(x,y,90,100)
p

v1 = c(1,2,3,4)
v2 = c('John', 'Jane', 'Tom')
v3 = c(v1, v2)
d = 1:10
sum(d)
length(d)
mean(d[1:5])
d = 1:9
d[d >= 5]
sum(d>5)
d==5
d[d==5]
d>5
d<8
condi = d > 5 & d < 8
condi
d[condi]

# LAB. R 카페의 매출액 분석하기

day = c('월', '화', '수', '목', '금', '토', '일')
menu1 = c(4,5,3,6,5,4,7)
menu2 = c(63,68,64,68,72,89,94)
menu3 = c(61,70,59,71,71,92,88)
sale.espresso <- 2 * menu1
sale.americano <- 2.5 * menu2
sale.latte <- 3.0 * menu3



matt = rbind(sale.espresso , sale.americano, sale.latte )
matt
rownames(matt) = c('에스프레소', '아메리카노', '카페라떼')
colnames(matt) = day

# 요일별 매출액
ms = matt[1,] + matt[2,] + matt[3,]
ms
# 총 매출액
sum(matt)
# 평균 매출액
mean(ms)

# 평균 매출 이상인 요일
day[ms >= mean(ms)]



