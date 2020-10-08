
#Displays e_quakes dataset
e_quakes <- datasets::quakes

#To view data in table format
View(e_quakes)

#Displays starting Data
head(e_quakes)
head(e_quakes, 10)

#Displays last data
tail(e_quakes)
tail(e_quakes, 20)

#Displays specific rows n columns
e_quakes[,c(1,2)]
e_quakes[c(4,5),]
e_quakes[c(1,2),c(4,5)]

#Complete view of data
summary(e_quakes)
summary(e_quakes$long)

#Overview of data
glimpse(e_quakes)

#Graphical representation of data
plot(e_quakes)

par(mfrow=c(3,2), mar=c(2,5,6,7), las=1, bty="n")

plot(e_quakes$depth, type="l")
plot(e_quakes$lat, type="l")
plot(e_quakes$mag, type="l")
plot(e_quakes$long, type="l")
plot(e_quakes$stations, type="l")

barplot(e_quakes$lat,
        xlab="measurements",
        main = "E_quakes lat",
        col="yellow")

barplot(e_quakes$long,
        xlab="measurements",
        main = "E_quakes long",
        col="yellow")

hist(e_quakes$lat)
hist(e_quakes$long, horiz=TRUE)
hist(e_quakes$long)


boxplot(e_quakes$lat)
boxplot(e_quakes$long, e_quakes$depth)
boxplot(e_quakes[,2:3], main="multiple")



install.packages("moments")
library(moments)

#Calculate Mean for all columns
mean(e_quakes$lat, na.rm = T)
mean(e_quakes$long, na.rm = T)
mean(e_quakes$depth, na.rm = T)
mean(e_quakes$mag, na.rm = T)
mean(e_quakes$stations, na.rm = T)

#Calculate Median for all columns
median(e_quakes$lat, na.rm = T)
median(e_quakes$long, na.rm = T)
median(e_quakes$depth, na.rm = T)
median(e_quakes$mag, na.rm = T)
median(e_quakes$stations, na.rm = T)

#Calculate variance for all columns
var(e_quakes$lat, na.rm = T)
var(e_quakes$long, na.rm = T)
var(e_quakes$depth, na.rm = T)
var(e_quakes$mag, na.rm = T)
var(e_quakes$stations, na.rm = T)

#Calculate Standard Deviation for all columns
sd(e_quakes$lat, na.rm = T)
sd(e_quakes$long, na.rm = T)
sd(e_quakes$depth, na.rm = T)
sd(e_quakes$mag, na.rm = T)
sd(e_quakes$stations, na.rm = T)

#Calculate Skewness for all columns
skewness(e_quakes$lat, na.rm = T)
skewness(e_quakes$long, na.rm = T)
skewness(e_quakes$depth, na.rm = T)
skewness(e_quakes$mag, na.rm = T)
skewness(e_quakes$stations, na.rm = T)

#Calculate Kurtosis for all columns
kurtosis(e_quakes$lat, na.rm = T)
kurtosis(e_quakes$long, na.rm = T)
kurtosis(e_quakes$depth, na.rm = T)
kurtosis(e_quakes$mag, na.rm = T)
kurtosis(e_quakes$stations, na.rm = T)

