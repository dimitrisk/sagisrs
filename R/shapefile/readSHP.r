# Read a shapefile
readShapefile = function(infile,layerName){
  library(rgdal)
  return(readOGR(infile,layerName))
}

shp="../../sample Data/polygons.shp"
result= readShapefile(shp, "polygons")