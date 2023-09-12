#Assignment 3 Question 1
#Test the hypothesis that there is no difference in weight gain
#between rats fed a high protein diet and rats fed a low
#protein diet.

#This will be a test involving two population means
#mu1 is population mean of high protein rats
#mu2 is population mean of low protein rats
# H0: mu1 - mu2 = 0 i.e. no difference in weight gain
#Ha: mu1 - mu2 <>0  therefore, 2-tailed test

#create vectors of weight gain in rats
high_protein<-c(134,146,104,119,124,161,107,83,113,129,97,12)
low_protein<-c(70,118,101,85,107,132,94)

#Because each vector has a low number of data points, i.e. n<30,
#a t-test will be done to test the hypothesis H0.

#FIRST:determine if high_protein and low_protein are
#normal or approximately normal by plotting their 
#stem and leaf plots
stem(high_protein)
stem(low_protein)

#SECOND: while not necessary after above step, determine if 
#high_protein and low_protein are normal or approximately normal
#by plotting their histograms
hist(high_protein,main="high protein",xlab="weight gain")
hist(low_protein,main="low protein",xlab="weight gain")

#both vectors have mounds in both stem and leaf plots and 
#in their histograms, therefore, presume normal populations 
#Therefore, t-test permissible.

#dof = degrees of freedom
dof = length(high_protein) + length(low_protein)-2
dof                     
#dof = 17

#perform  t-test for the 2 independent samples
t.test(high_protein,low_protein,alternative="two.sided",conf.level=0.95,var.equal=TRUE)

#the 95% confidence interval includes 0:-23.09271 to 42.59271
#the p-value is 0.5394, much greater than alpha=0.05
#therefore, insufficient evidence to reject H0, there is no difference in 
#weight gain.