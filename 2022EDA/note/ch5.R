x<-rnorm(1000, 1, 0.15)
par(mfrow=c(3,3))
linear <- 2*x+100                              # 선형 변환 
square <-x^2                                    # 제곱 변환 
double_square <-x^4                        # 4제곱 변환 
square_root <-sqrt(square)               #  제곱근 변환 (원 자료  x 가 됨)
double_square_root<-sqrt(sqrt(double_square))     # 4 제곱근 변환( 원 자료 X가 됨)
log<- log(x)                                      # 대수변환 
exponential<-exp(log)                           # 지수변환 (원 자료 x 가 됨)

hist(x, ylab = 'income', col = 'lightblue', border='pink', main = '원자료 X')
hist(linear, ylab = 'income', col = 'lightblue', border = 'pink', main = '원자료를 선형 변환')
hist(square, ylab = 'income', col = 'lightblue', border = 'pink', main = '원자료를 제곱 변환')
hist(double_square, ylab = 'income', col = 'lightblue', border = 'pink', main = '원자료를 4제곱 변환')

hist(square_root, ylab = 'income', col = 'lightblue', border = 'pink', main = '원자료로 변환')
hist(double_square_root, ylab = 'income', col = 'lightblue', border = 'pink', main = '원자료로 변환')
hist(log, ylab = 'income', col = 'lightblue', border = 'pink', main = '원자료를 로그 변환')
hist(exponential, ylab = 'income', col = 'lightblue', border = 'pink', main = '원자료 대수 변환')
