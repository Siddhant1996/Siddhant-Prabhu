#practice

m1=matrix(1:20, nrow=5)
m1
x=1:5
x
list1=list(x,m1)
list1
str(women)
?women
head(women)
head(women, n=4)
summary(women)
x=women$height
x
sort(x,decreasing=T)
table(x)
quantile(x)
x
seq(0,1,.1)
quantile(x,seq(0,1,.1))
summary(x)
min(x);max(x)
boxplot(x)
abline(h=c(min(x),max(x),mean(x),median(x)),col=1:5,lwd=4)

#lm
head(women)
names(women)
model1=lm(weight~height, data=women)
summary(model1)

#y = mx+C
x
(y=4.45*58-87)
plot(women)
abline(model1, col='red', lwd=4)


attendence= 1:20
marks=1:20
summary(lm(marks~attendence))
cbind(attendence,marks)
cor(attendence,marks)



?mtcars
mtcars
names(mtcars)
mtmodel = lm(mpg~ wt, data=mtcars)
mtmodel2=lm(mpg~wt+disp+cyl, data=mtcars)
mtmodel2


mtcars
mtmodel_1 = lm(mpg ~ wt, data=mtcars )
mtmodel_2 = lm (mmtmodel_1 = lm(mpg ~ wt, data=mtcars)
mtmodel_2 = lm(mpg ~ wt + disp, data=mtcars )
mtmodel_3 = lm(mpg ~ wt + disp + cyl, data=mtcars )
mtmodel_4 = lm(mpg ~ ., data=mtcars )
