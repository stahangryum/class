getwd()
ds <- read.csv('data/fdeaths.csv', row.names = 'year')
ds
my_col <- c('black', 'blue','red', 'green','purple','dark gray')
my_lty <- 1:6

plot(1:12,
     ds[1,],
     main = '월별 사망자 추이',
     type = 'b',
     lty = my_lty[1],
     xlab = 'Month',
     ylab = '사망자수',
     ylim = c(300, 1200),
     col = my_col[1])

for (i in 2:6){
  lines(1:12, # x data
        ds[i,],
        type = 'b',
        lty = my_lty[i],
        col = my_col[i]
      )
}

legend(x='topright',
          lty = my_lty,
          col = my_col,
          legend = rownames(ds)) # 또는 1974:1979

install.packages('DAAG')
library(DAAG)

data(carprice)
str(carprice)
class(carprice)
range(carprice$Price)
hist(carprice$Price)
table(carprice$Type)

class(carprice$Type)
levels(carprice$Type)
carprice$Type

barplot(table(carprice$Type),
        col = rainbow(length(table(carprice$Type))))


idx <- which(carprice$Price == max(carprice$Price))
idx

carprice[idx, c('Type', 'Price')]


















