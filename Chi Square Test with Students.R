#Assignment 3 Question 3
#Null hypothesis:H0: freshmen, sophomores, juniors, and seniors
#are equally represented among students signed up for this 
#course. I.e. the probability of a randomly selected student being
#in any of those categories is the same for all of the 
#categories, that is, 0.25.

#create a vector with the data
x<-c(25,32,18,20)
#perform chi square test
chisq.test(x,correct=FALSE,p=rep(1/length(x), length(x)))

#p-value = 0.1781. The null hypothesis is not rejected due to 
#insufficient evidence. This result is significant at the 
#5% level. The result is not statistically significant. 
#The students are equally represented. 
