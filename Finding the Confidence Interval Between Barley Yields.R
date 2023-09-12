#Question 2 Assignment 3
#Analysis of immer data

#Find the 95% confidence interval estimate of 
#the difference between the mean barley yields
#between years 1931 and 1932

#The 5 varieties of barley were mixed and grown 
#together in each of 6 locations.
#The barley was grown in the same locations
#for both 1931 and 1932. This means the results are
#NOT independent because the same soil was used for
#2 years. 

#create vectors of the yields for 1931 and 1932
yield1931<-immer$Y1
yield1932<-immer$Y2
yield1931
yield1932

#determine if the standard deviations of the yields for each
#year are the same. If the same, must use var.equal=TRUE
sd1931<-sd(yield1931)
sd1931
sd1932<-sd(yield1932)
sd1932
#the standard deviations are not the same

#perform t-test which will give several statistics

t.test(yield1931,yield1932,alternative="two.sided",paired=TRUE)
#95% confidence interval is 6.121954 to 25.704713
#There is a difference between the 2 years average yields
#because 0 is not in the confidence interval, 
#t=3.324 (very high), and p-value=0.002413, which is less than 0.025.
#The results are highly significant. 
