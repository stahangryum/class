library(carData)
data(UN)
UN
str(UN)

levels(UN$region)
levels(UN$group)
col_na <- function(y){
  return(sum(is.na(y)))
}

apply(UN, 2, col_na)
mean(UN$lifeExpF, na.rm = T)
class(UN)
tmp <- UN[,c('pctUrban', 'infantMortality')]
class(tmp)
tmp <- tmp[complete.cases(tmp), ]
colMeans(tmp)

tmp <- subset(UN, region=='Asia') # 아시아 국가 추출
mean(tmp$fertility, na.rm=T)
levels(UN$region)
UN$region

UN_Regionfertility = c()
for (continent in levels(UN$region)){
  tmp <- subset(UN, region == continent)
  UN_Regionfertility = c(UN_Regionfertility, mean(tmp$fertility, na.rm = T))
}
names(UN_Regionfertility) <- levels(UN$region)
print(UN_Regionfertility)

v1 <- c(1,7,6,8,4,2,3)
v1 = sort(v1)
v2 <-  sort(v1, decreasing = TRUE)
name <- c('정대일', '강재구', '신현석', '홍길동')
sort(name)
sort(name, decreasing = T)
order(name)
order(name, decreasing = T)
idx = order(name)
name[idx]
name[order[name]]
data(iris)
order(iris$Sepal.Length)
iris.new = iris[order(iris$Sepal.Length),]
iris.new
order(iris$Species)
iris[order(iris$Species, decreasing = T), ]
