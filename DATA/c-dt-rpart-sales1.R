# CART Models - Regression Trees - Merchent Sales
#Predict the mean sales from the data; create decision tree
library(rpart)
library(rpart.plot)
library(forecast)

msales = read.csv(file = "./data/msales.csv", skip=1, header = T)
dim(msales)
# Summarize the dataset
summary(msales)
str(msales)
# See Summary values of sales
aggregate(msales$sales,by=list(msales$zone), FUN = mean)

# Random Sampling
set.seed(777) # To ensure reproducibility
Index = sample(x = 1:nrow(msales), size = 0.7*nrow(msales))
Index
length(Index)

#divide data into 2 parts - Train (70%), Test(30%)
# Create Train dataset
train = msales[Index, ]
nrow(train); dim(train)

# Create Test dataset
test = msales[-Index, ]
nrow(test); dim(test)

#### Modeling ############
# Build a full model with default settings
set.seed(123)
CartModel=rpart(sales ~ . ,data=train[,-1], method="anova")
CartModel
summary(CartModel)

# Plot the Regression Tree
rpart.plot(CartModel,type=4,fallen.leaves=T,nn=T, cex=1)
mean(msales$sales)
printcp(CartModel)
rsq.rpart(CartModel)  #only for Regression Tree

prune1 = prune(CartModel, cp=.014)
prune1
rpart.plot(prune1, nn=T, cex=1)

#### Using CP to expand / Prune the tree ###
#Start fresh Model
RpartControl = rpart.control(cp = 0.005)
set.seed(123)
CartModel_1 = rpart(sales ~ ., data = msales[,-1], 
      method = "anova", control = RpartControl)
CartModel_1

CartModel_1$where
trainingnodes = rownames(CartModel_1$frame) [ CartModel_1$where]
trainingnodes

summary(CartModel_1)
rpart.plot(CartModel_1, type = 4,cex = 0.6)
printcp(CartModel_1)
rsq.rpart(CartModel_1)


#Validation / Test Accuracy
PredictTest=predict(CartModel,newdata=test,type="vector")
PredictTest1=predict(CartModel_1,newdata=test,type="vector")
PredictTest1
length(PredictTest)
msales[2,'sales']

# Calculate RMSE and MAPE 
library(forecast)
# Validate RMSE and MAPE calculation with a function in R
length(train$sales)
ModelAccuracy = accuracy(PredictTest,test$sales)
ModelAccuracy1 = accuracy(PredictTest1,test$sales)
rbind(ModelAccuracy,ModelAccuracy1)

#select model with least error




A=c(1,1.5,3,5,3.5,4.5,3.5)
B=c(1,2,4,7,5,5,4.5)
marks=data.frame(A,B)
marks
?kmeans
(c1 = kmeans(marks,3))




# Clustering For Customer Segmentation

(age = ceiling(runif(50, 30, 50)))
(income = ceiling(rnorm(50, 1000, 50)))
(gender = sample(c(1,2), size=50, replace=T))
customers = data.frame(age, income, gender)
head(customers)

#case1 : only age
age1 = data.frame(age)
clust1 = kmeans(age1, 3)
clust1$cluster
combined = cbind(age1, clust1$cluster)
plot(age1$age)
plot(age1$age, col=clust1$cluster, pch=c(11,12,14))

#case1 : only income
income1 = data.frame(income)
clust1a = kmeans(income, 4)
clust1a$cluster
(combined = cbind(income1, clust1a$cluster))
combined[order(clust1a$cluster),]
plot(income1$income, col=clust1a$cluster, pch=c(11,12,14,15))




df2 = data.frame(age, income)
clust2 = kmeans(df2, 4)
clust2$cluster
combined2 = cbind(df2, clust2$cluster)
head(combined2)
plot(x=df2$age, y=df2$income, col=clust2$cluster, pch=c(11,12,14,17))
df2
df2[clust2$cluster==3,]

