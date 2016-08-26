#convert shp to owin object
library(spatstat)
library(sp)
library(maptools)

shp="../../sample Data/polygons.shp"
B<- readShapePoly(shp)
AB<-as(B,"SpatialPolygons")
A<-as.owin(AB, fatal=TRUE)