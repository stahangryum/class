# 1
carprice.new = read.csv('data/carprice.csv')
str(carprice.new)

# 2
unique(carprice.new$Type)

# 3
compact.new = subset(carprice.new, Type == 'Compact' & MPG.city >= 2 ,)
compact.new

# 4
sink('compact.txt', append = TRUE)
print(compact.new)
sink()

# 5
sink('compact.txt', append = TRUE)
subset(carprice.new, Type == 'Small' & MPG.city >= 5, )
sink()

sink('compact.txt', append = TRUE)
subset(carprice.new, Type == 'Sporty' & MPG.city >= 2, )
sink()

