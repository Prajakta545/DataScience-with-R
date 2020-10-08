

install.packages("dplyr")


#invoke inbuilt function 
library(dplyr)


#invoke basic data set
library(nycflights13)


data(flights)


#head() is used to Displays by default first 6 records
head(flights)


#Transfers Flights data into Flights name variable Data frame
flights<-data.frame(flights)


#glimpse() is used to Overview of data
glimpse(flights)


#select()used to select required rows n columns
select(flights, dep_time, arr_time, flight)


#filter() is used to keep rows matching criteria with comparison operator ie.==
filter(flights, month==1, day==1, origin=="EWR")


#operator & and operator | used on conditions by default & operator used n its denoted by comma(,)
filter(flights, carrier=="AA"| carrier=="UA")



#pipelining(%>% operator used) used for sequence execution when use of multiple functions 
flights %>%
  
    select(carrier, dep_delay) %>%
    filter(dep_delay > 60)


#select carrier n dep_delay column n sort by dep_delay
flights %>%
    select(carrier, dep_delay) %>%
    arrange(dep_delay)

#mutate() is used to changes value of column n it creates new variable having functions of existing variable
flights <- flights %>% mutate(speed=distance/arr_time*60)


#summarize() is used to reduce variables value
flights %>%
  group_by(dest) %>%
  summarise(avg_delay=mean(arr_delay, na.rm=TRUE))

flights %>%
  group_by(month) %>%
  summarise(flight_count=n()) %>%
  arrange(desc(flight_count))


