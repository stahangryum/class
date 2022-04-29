
popu <- c(778, 63, 68, 355, 248, 74,70, 200, 167, 94, 74, 75, 94, 88, 76)

hist(popu)

stem(popu)
M = median(popu)


# 왜도 값 
print(((b-M) - (M-a))/((b-M) + (M-a)))

quantile(popu, 0.5)
M
median(popu)
sort(popu)

a = quantile(popu, 0.25)
b = quantile(popu, 0.75)

IQR = b-a
popu[popu < a-1.5*IQR]
popu[popu > a+1.5*IQR]

quantile(popu, 0.5)
quantile(popu, 0.25)
quantile(popu, 0.125)
quantile(popu, 0.0625)

hist(popu)
hist(popu^(1/2))
hist(popu^(1/16))
hist(log(popu))
ls

x<- 1
remove(x)
x

remove(ls)
remove(ls(...))
?ls

remove(objects())
?remove
remove(list=objects())
ls()

gg = matrix(c(1,2,2,5, 4,5,5,1), nrow = 4, byrow = T)
gg
apply(gg, 2, median)

size = 1000000
mydist <- rexp(size, 1)
median(mydist)
a = quantile(mydist, 0.25)
b = quantile(mydist, 0.75)
IQR = b-a

sum(mydist[mydist > b+1.5*IQR]) / size


## 3
mins <- c(11.1, 7.2, 1.7, 0.7, 7.5)
L <- c(16.5, 9.5, 2.5, 0.8, 8.8) 
Mid <- c(22.8, 16.7, 2.7, 0.9, 13)  
U <- c(36.9, 23, 3.8, 2.5, 24.8)
maxs <- c(69, 45.4, 11.9, 7.9, 77.8)

df = cbind(mins, L, Mid, U, maxs)
df = df^(1/4)
boxplot(df[1,],df[2,],df[3,],df[4,],df[5,])
boxplot(df[1,],df[2,],df[3,],df[4,],df[5,])

x <- c(1,2,'?',4,5)
mean(x, na.rm = T)

?save()

myt = round(rt(1000, 5),1)
barplot(myt)
gg= seq(-6,6,0.01)
par(new=T)
points(gg,
       dnorm(gg, mean = mean(myt), sd = sd(myt)),
       col = 'red')
dnorm
?plot()

save('Untitled.ipynb', 'b.txt')
