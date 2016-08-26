#convert shp to ppp object
library(sp)
library(spatstat)
library(maptools)
S <- readShapePoints("rain_stations.shp") 
SP <- as(S, "SpatialPoints") 
P <- as(SP, "ppp")