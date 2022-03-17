print("Isha Golakiya")
print("R practice ")

install.packages("moments")
install.packages("FSA")
installed.packages("FSAdata")
install.packages("magrittr")
install.packages("plyr")
install.packages("dplyr")
install.packages("tidyr")
install.packages("tidyverse")
install.packages("ggpubr")

library(FSA)
library(FSAdata)
library(magrittr)
library(dplyr)
library(tidyr)
library(plyr)
library(tidyverse)
library(moments)
library(ggplot2)
library(ggpubr)



data()
view(chickwts)


chick<- chickwts
summary(chick)
str(chick)

#Understanding the Box-plot 
ggboxplot(chick$weight,
          ylab = "weight", xlab = FALSE,
          ggtheme = theme_minimal())


#knowing the skewness
print(skewness(chickwts$weight))
hist(chickwts$weight,xlab = "weight",main = "chicken weights ")

#shapiro test

ch<- head(chick,25)
ch

#ideal scenario for normality P>0.05
shapiro.test(ch$weight) 


ch<- head(chick,25)
ch

mean(ch$weight)
sd(ch$weight)
sqrt(length(ch$weight))

#tvalue for the sample
t_stat<- (mean(ch$weight)-261)/ (sd(ch$weight) / sqrt(25))
t_stat


t.test(ch$weight,mu = 261, alternative = "two.sided" )

#Critical value
qt (0.05/2,24,lower.tail = FALSE)

#if sample t value < Critical  value . Null hypothis is rejected. if sample T valiue is less or greater that +- of oritnal T calues table resp. then only nnull hypo is accepted
# tvalue is -5  


ggqqplot(chick$weight,  ylab = "Weight",
         ggtheme = theme_minimal())
#Sample mean
mean(chick$weight)


#sample Standard Deviation
sd(chick$weight)


#length of sample
n<- length(chick$weight)
n



t.test(chick$weight,mu = 250,conf.level = 0.95)





    

