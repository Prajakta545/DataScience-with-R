
library(datasets) 

data("airquality")

#displays data set airquality
datasets::airquality

#Displays starting data
head(airquality)
head(airquality, 15)

#Displays ending data
tail(airquality)
tail(airquality, 10)

#Displays particular rows n columns data
airquality[ ,c(1,2)]
airquality[c(2,3), ]
airquality[c(3,4),c(4,5)]


#Summary of data
summary(airquality)

#Summary of specified column
summary(airquality$Ozone)
summary(airquality[,1])

#Plots graphs in format 3 rows n 3 columns
par(mfrow=c(3,3), mar=c(2,5,2,1), las=1, bty="n")
par(mfrow=c(3,3), mar=c(2,5,2,1), las=0, bty="o")

#plots all data 
plot(airquality)

#Plots specific data
plot(airquality$Temp)
plot(airquality$Ozone, airquality$Temp)

#Plots in line format
plot(airquality$Solar.R, type = "l")

#Plots barcharts
barplot(airquality$Ozone,
        main="Ozone Concenteration in Air",
        xlab="Ozone levels",
        ylab = "Ozone values",
        col="yellow")

#Plots histogram
hist(airquality$Day,  horiz=TRUE)

#Plots box plot
boxplot(airquality$Solar.R)
boxplot(airquality[,1:4], main='Boxplot')

#To plot multiple box plots in 1 frame
boxplot(airquality[,1:4], main='multiple')




install.packages("moments")
library(moments)

#Calculate mean of Ozone column
mean(airquality$Ozone, na.rm=T)

#Calculate median of Ozone column
median(airquality$Ozone, na.rm=T)


#Calculate variance of Ozone column
var(airquality$Ozone, na.rm=T)

#Calculate Standard Deviation of Ozone column
sd(airquality$Ozone, na.rm=T)


#Calculate Skewness of Ozone column
skewness(airquality$Ozone, na.rm=T)

#Calculate kurtosis of Ozone column
kurtosis(airquality$Ozone, na.rm=T)

#Calculate skewness of dataset airquality
skewness(airquality, na.rm=T)
