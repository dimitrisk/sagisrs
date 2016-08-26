
library(raster)
library(maptools)

# Read original raster data
ra = raster("Data/MyRaster.tif")
perioxi = readShapeSpatial("Data/Perioxi.shp")

# Plot original raster data
plot(ra)
plot(perioxi, add=T)

# Create a new grid of 10x10 and transform it to a SpatialPolygonDataframe
g1 =  raster(nrows=10, ncols=10, ext=extent(ra), crs=crs(ra))
g1[] = 0
g1_pol = rasterToPolygons(g1)

# Plot grid
plot(ra)
plot(g1, col=rgb(0,0,1,0.5), add=T )
plot(perioxi, add=T)
plot(g1_pol, add=T) 



# Calculate sum by grid cell
results_1 = extract(ra, g1_pol, fun=sum, na.rm=T)

# Calculate mean by grid cell
results_2 = extract(ra, g1_pol, fun=mean, na.rm=T)


