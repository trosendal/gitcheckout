library(foreign)
points<-read.dta('points.dta')


#my important figure
plot(x=points$lat, y=points$lon)
