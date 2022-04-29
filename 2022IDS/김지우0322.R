# 리스트
# 202115789 김지우

h_list = c('balling', 'tennis', 'ski')
person = list(name='Tom',
              age=25,
              student=TRUE,
              hobby=h_list)
person
person[[1]]
person$name
person[[4]]

accident <- c(31,26,42,47,50,54,70,66,43,32,32,22)
names(accident) <- c('M1','M2','M3','M4','M5','M6',
                     'M7','M8','M9','M10','M11','M12')
accident

sum(accident)
max(accident)
min(accident)
accident*0.9
accident[accident>=50]
month_50 = accident[accident>=50]
month_50
names(month_50)

length(accident[accident<50])

M6_acc = accident[6]
accident[accident > M6_acc]
accident[accident > accident[6]]

z = matrix(1:20, nrow=4, ncol=5)
z
x = 1:4
y = 5:8
m1 = rbind(x,y)
m1
