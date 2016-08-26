ppp.shape <- function(ppp, name = '', dest = './newSheep/'){
  library(shapefiles)
  if (name!=TRUE){name = deparse(substitute(ppp))}
  wd = getwd()
  if (is.ppp(ppp)){
    df <- data.frame(Id = seq(1,length(ppp$x)), ppp$x, ppp$y)
    dbf_df <- cbind(Id = seq(1, length(ppp$x)),data.frame(marks(ppp)))
    
    ddShapefile <- convert.to.shapefile(df, dbf_df, "Id", 1) #1:points, 2:lines, 3:polygons
    if (! file.exists(dest)) {dir.create(dest)}
    setwd(dest)
    write.shapefile(ddShapefile, name, arcgis=T)
    setwd(wd)
  }
  else if (! is.ppp(ppp)) {
    cat(paste(deparse(substitute(ppp)), ' is not a ppp object.', '\n', sep=' '))
    }
  
  return(cat('Shapefile created.'))
}