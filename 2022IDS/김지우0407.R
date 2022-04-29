n <- 12

if (n%%2 ==1){
  type <- 'odd'
} else {
  type <- 'even'
}

print(type)

n <- -2
res = ifelse(n<0, -n, n)

library(svDialogs)
purchase <- dlgInput('Enter the purchase amount')$res
purchase <- as.numeric(purchase)

type = NULL
ratio = NULL

if (purchase >= 300000){
  type = '플래티넘'
  ratio = 0.07
} else if (purchase >= 200000){
  type = '골드'
  ratio = 0.05
} else if (purchase >= 100000){
  type = '실버'
  ratio = 0.03
} else{
  type = '프렌즈'
  ratio = 0.01
}
ratio
cat('고객님은', type, '회원으로 구매액의', ratio*100,'%가 적용됩니다.')

v = c('플래티넘', '골드', '실버', '프렌즈')
for (i in v){
  cat(i, '*')
}

mySub = c('전공진로설계', 'PYthon 입문', '컴퓨터활용',
          '탐색적자료분석', '통계수학', '대학생활과진로설계',
          '창업비즈니스모델', '건지리버럴아츠특강', '데이터과학기초')
for (i in mySub){
  cat(i, ' ')
}

odd_sum = 0
for (i in 1:20){
  if(i%%2==1){
    cat(i, ' ')
    odd_sum = odd_sum + i
  }
}
odd_sum

data(iris)
norow <- nrow(iris) 		# iris의 행의 수
mylabel <- c() 			# 비어있는 벡터 선언
for(i in 1:norow) {
  if (iris$Petal.Length[i] <= 1.6) { 	# 꽃잎의 길이에 따라
    mylabel[i] <- 'L'
  } else if (iris$Petal.Length[i] >= 5.1) {
        mylabel[i] <- 'H'
  } else {
    mylabel[i] <- 'M'
    }
}
print(mylabel) 			# 레이블 출력
newds <- data.frame(iris$Petal.Length, mylabel) 	# 꽃잎 길이와
head(newds) 			# 새로운 데이터셋 내용 출력

sum <- 0
i <- 1
while(i <=100) {
  sum <- sum + i 		# sum에 i 값을 누적
  i <- i + 2 			# i 값을 1 증가시킴
}
print(sum)





