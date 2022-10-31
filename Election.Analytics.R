rm(list = ls())

install.packages("maps")
install.packages("devtools")
install.packages("ggmap")

library(maps)
library(devtools)
library(ggmap)
register_google(key = "AIzaSyBlCZXGDK9dN3Vf_N1qdI6mPfFFCA34ubs")

#Load Maps
statesMap = map_data("state")
View(statesMap)
z = table(statesMap$group)
table(z)

#Draw the map
ggplot(statesMap, aes(x = long, y = lat, group = group)) + geom_polygon(fill = "white", color = "black")

# Read data 
polling = read.csv("PollingImputed.csv")
View(polling)
