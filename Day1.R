#IIMLNC
#day1
?mtcars  #help on mtcars
class(mtcars)
x= 1:5
class(x)
x

str(mtcars)
?str
y=c(1,3.5,5)
y
class(as.integer(y))
y
summary(mtcars)
as.integer(y)

#vectors----

x= 1:5
x


x1 = c(1,2,3,4,5)
x1
(x3 = c(2,4,36,3))
x3[3]
x4 = rnorm(n=100, mean=60, sd=10)
x4

plot(x4)
plot(density(x4))

hist(x4)
hist(x4, breaks = 10, col=1:10)

range(x4)#
min(x4);max(x4);mean(x4)
boxplot(x4)
plot(sort(x4), type='l')   #line
plot(sort(x4), type='b')   #line and point
x4[x4>65]
mean(x4[x4>65])   #mean of values more than 65
x4[1:10]    #printing first 10n 
x4[-c(1:10)]#not printing 1 to 10 values
length(x4[x4 > 65])
sum(x4>65)

sum((x4[x4 > 65]))

#



#matrices----

(data = c(10,20,39,40,32,34))
(m1 = matrix(data=data, nrow = 2))   #filling column wise

(m2 = matrix(data=data, nrow = 2, byrow= T))    #filling row wise

rownames(m1) = c('R1', 'R2') 
m1
colnames(m1) = c('C1','C2','C3')
m1
m1[1,]
m1[,1]
m1[,3]
m1[,2]
m1[,2:3]
colSums(m1)
rowSums(m1)
colMeans(m1)
rowMeans(m1)
apply(m1, 1, FUN = min)
apply(m1, 1, FUN = max)
apply(m1, 2, FUN = min)
apply(m1, 2, FUN = max)
max(m1)
min(m1)

#


#dataframe----
(rollno = paste('IIMLN', 1:13, sep='-'))
(name = paste('Student', 1:13, sep='&'))
(age = round(runif(13, min=24, max=32),2))
(marks = trunc(rnorm(13, mean=60, sd=10)))
set.seed(1234)
(gender =sample(c('M','F'), size=13, replace=T, prob = c(.7, .3)))
table(gender)
?prop.table(table(gender))
(x=c(-14.35, 14.35, -14.55, 15.35))
floor(x);
ceiling(x)
trunc(x)

(grade = sample(c('Ex', 'Good', 'Sat'), size=13, replace=T, prob=c(.6, .3, .1)))
sapply(list(rollno, name, age, marks, gender, grade), length)
(students = data.frame(rollno, name, age, marks, gender, grade))

write.csv(students, 'data/students.csv', row.names = F)
