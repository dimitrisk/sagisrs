# Select sample locations in polygons with various sampling methods.

setwd("~/xxx/xxx")
library(sp)
library(rgdal)

x <- readOGR('xxx/xxx/xxx/polygon.shp', layer='polygon')
plot(x)

#random, regular, stratified, nonaligned, hexagonal, clustered, Fibonacci
s2= spsample(x, n=100, type='regular')
plot(s2, col='red',add=T)
