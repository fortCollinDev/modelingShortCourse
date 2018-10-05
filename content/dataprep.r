# 9.28/2018
# using this code to slim down the raster layers that were using in the short course to help reduce the download time
# 
# 

if (!require('rgeos')) install.packages('rgeos')
if (!require('dplyr')) install.packages('dplyr')

library(rgeos)
library(dplyr)

setwd("H:\\fortCollinDev\\modelingShortCourse\\testdocs\\part6")

#find images
rastersPath <- dir()[endsWith(dir(), ".tif")]
rastersPath
# read in imagery 
r1 <- raster::raster(rastersPath[1])
r2 <- raster::raster(rastersPath[2])
r3 <- raster::raster(rastersPath[4])
r4 <- raster::raster(rastersPath[5])
# store in a list 
rasterList <- c(r1,r2,r3,r4)

# pull extent 
extent <- raster::extent(r1)
extent

# Reduce area of extent by 1/4 while keeping the lower left 
xmin <- extent@xmin
xmax <- ceiling(extent@xmin - ((extent@xmin - extent@xmax)*0.25))
ymin <- extent@ymin
ymax <- ceiling(extent@ymin - ((extent@ymin - extent@ymax)*0.25))

# generate a spatial polygon 
bb <- matrix(c(xmin, xmin, xmax, xmax, xmin, ymin, ymax, ymax, ymin, ymin), ncol=2)
bgExt <- sp::SpatialPolygons(list(sp::Polygons(list(sp::Polygon(bb)), 1)))

# write a function that applys the raster clip function 
clipRaster <- function(raster){
  raster::crop(raster, bgExt)
}
# apply the function to the raster list. 
clippedRaser <- lapply(rasterList, clipRaster)

#write out rasters with the same names that they were brough in with 
raster::writeRaster(clippedRaser[[1]], filename= rastersPath[1], datatype='INT4S', overwrite=TRUE)
raster::writeRaster(clippedRaser[[2]], filename= rastersPath[2], datatype='INT4S', overwrite=TRUE)
raster::writeRaster(clippedRaser[[3]], filename= rastersPath[4], datatype='INT4S', overwrite=TRUE)
raster::writeRaster(clippedRaser[[4]], filename= rastersPath[5], datatype='INT4S', overwrite=TRUE)

