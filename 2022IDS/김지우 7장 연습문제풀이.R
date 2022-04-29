# 01
n <- 12
if (n%%2 == 1){  # 홀수이면 TRUE, 짝수이면 FALSE
  type <- 'odd'
} else {
  type <- 'even'
}
print(type)

# 02
n <- -12
res <- ifelse(n < 0, -n, n)
res

# 03
input <- 1:10
n <- length(input)
switch <- TRUE
result <- NULL

if(switch == T){
  result <- prod(input) # 첫 번째 수정 : result가 정의되지 않은 상태에서 result * i를 할 수 없다.

} else{ # 두 번째 수정 : if의 닫는 괄호와 else는 같은 줄에 있어야 한다.
  result <- sum(input)
}

print(result)

# 04
nums = 1:20
summ = 1
for (i in nums){
  if (i%%2 == 1){ # 홀수이면 FALSE
    summ = summ * i
  } else{
    next
  }
    
}
summ

# 05
nums = 1:20
summ = 1
count = 1
while (count <= 20){
  summ = summ * nums[count]
  count = count + 2
  
  
}
summ

# 06
data(mtcars)
apply(mtcars[c('mpg', 'hp', 'wt')], 2, mean)

# 07
triangle.area <- function(base, height){
  S = 1/2 * base * height
  return (S)
}
triangle.area(5.2, 4.6)

# 08

multiple.answer <- function(data){
  res.min <- min(data)
  res.max <- max(data)
  res.avg <- mean(data)
  result <- list(min=res.min, max=res.max, avg=res.avg)
}
result <- multiple.answer(data)
cat('min:', result$min, ', max:', result$max, ', avg:', result$avg, '\n')
result

# 09
data(mtcars)
rownames(mtcars)[mtcars$mpg == max(mtcars$mpg)] # 마력이 가장 높은 자동차의 모델명
rownames(mtcars)[mtcars$mpg == min(mtcars$mpg)] # 마력이 가장 낮은 자동차의 모델명

# 10
# 아래는 R코드로 구현한 것입니다.
# 시각화한 순서도는 첨부파일에 별도로 올려두었습니다.

library(svDialogs)
check <- function(){
  # 1단계
  answer = dlgInput('냉/온수 급수호수 좌/우 위치가 바뀌었는지 확인하셨나요?(예/아니오)')$res
  if (answer == '아니요'){
    return('냉/온수 급수호스 설치 상태를 확인해 주십시오.')
  }
  
  # 2단계
  answer = dlgInput('급수가 전혀 안 되나요?(예/아니오)')$res
  if (answer == '아니요'){
    return('급수호스 꺾임. 눌림 확인과 급수거름망을 빼서 세척해 주십시오.')
  }
  
  # 3단계
  answer = dlgInput('단수 확인 및 수도는 열어 놓으셨나요?(예/아니오)')$res
  if (answer == '아니요'){
    return('단수 확인 및 수도를 왼쪽으로 열어 주십시오.')
  }
  
  # 4단계
  answer = dlgInput('급수호스와 거름망에 이물질은 확인해보셨나요?(예/아니오)')$res
  if (answer == '아니요'){
    return('급수호스 꺾임, 눌림 확인, 급수거름망 세척해 주십시오.')
  } else {
    return('출장 서비스 예약')
  }
}  
  
check()

# 11

fab <- c(0,1)
for (i in 3:20){
  fab[i] = fab[i-2] + fab[i-1]
}
fab

# 12

# (1) 살인, 폭행, 강간 범죄에 대한 체포건수의 합을 각각 구하시오.
apply(USArrests[,c('Murder', 'Assault', 'Rape')], 2, sum) 

# (2) 살인, 폭행, 강간 범죄에 대한 체포건수의 평균을 각각 구하시오.
apply(USArrests[,c('Murder', 'Assault', 'Rape')], 2, mean)

# (3) 살인 범죄 체포가 가장 많이 발생한 주는 어디이닞 구하시오.
rownames(USArrests)[USArrests$Murder == max(USArrests$Murder)]

# (4) 폭행 범죄 체포가 가장 적게 발생한 주의 살인 범죄 체포건수를 구하시오.
rownames(USArrests)[USArrests$Assault == min(USArrests$Assault)]

  
# 수업시간에 풀었던 문제

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


