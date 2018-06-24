#Matrix
#row * columns
?rnorm
(x = trunc(runif(24, 10, 50)))
?runif
?matrix
matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,
       dimnames = NULL)
m1 = (matrix (data=x, nrow=4))
m1

(m2= matrix(data=x,nrow=4,byrow= T))


(m3= matrix(x,ncol=4))

(m4= matrix(c(1,2,3,4), nrow=2, ncol=4))

dimnames(m1) = list (c ("delhi", "mumbai","noida","chennai"),(paste ('prod', 1:6))
  m1                   
colMeans(m1)
pie(x=rowMeans (m1))
barplot(colMeans(m1)) #barplots for products
barplot(colMeans(m1),horiz=T,col=1:6) #data with colours


#Matrix
#row x columns
?rnorm
set.seed(1234)
(x = trunc(runif(24,100,500)))
(m1 = matrix(data=x, nrow=4,dimnames = list(c('delhi','mumbai','noida','chennai'),paste('Prod',1:6,sep="-"))))
colMeans(m1);rowMeans(m1)
colSums(m1); rowSums(m1)
pie(x=rowMeans(m1))
barplot(rowMeans(m1))  # barplot for locations
barplot(colMeans(m1))  #barlplot for products
barplot(colMeans(m1), horiz = T)
barplot(colMeans(m1), horiz = T, col=1:6)
m1
#Subset a Matrix
m1[ , 1:2]

m1[ ,c(1,4)]
m1[c(1,3) ,c(1,4)]
m1[c('delhi','mumbai'),c('Prod-3')]
m1[m1 > 300]
m1
m1[c('delhi'),]
sd(m1[c('delhi'),])
sum(m1[c('delhi','mumbai'),c('Prod-3','Prod-4')])

#m end

(m2 = matrix(data=x, nrow=4, byrow = T))
(m3= matrix(x, ncol=4 ))
(m4 = matrix(c(1,2,3,4), nrow=2, ncol=4,byrow=T))
m1


        