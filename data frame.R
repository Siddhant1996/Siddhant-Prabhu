#data frame

(rollno = 1:10)
(sname = paste('Student',1:10,sep='-'))
(age = floor(runif(10,20,30)))
(gender= c(rep('M',5),rep("F",5)))
(course = sample(c('Engg','MBA', 'Medical'),10, replace = T,prob=c(.6,.5,.4)))  
(married = sample(c(TRUE,FALSE),10,replace = T))
table(married)  
?sample
