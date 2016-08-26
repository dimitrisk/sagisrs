#!/bin/bash

from="/home/dimitris/Downloads/coordinates/RetailNew"
#echo $from

ogrinfo -al -so $from

ogr2ogr -t_srs EPSG:4326 out.shp  $from  

