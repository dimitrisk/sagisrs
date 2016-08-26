##' Plot a single vector of points into a scaterplot 
##' and draw regression line with distance from points.
##' @title plot.points
##' @param invector 
##' @param line 
##' @param dist 
##' @param xtitle 
##' @param ytitle 
##' @param title 
##' @author Dimitris Kavroudakis, www.dimitrisk.gr
plot.points=function(invector,line=T,dist=F,xtitle="cases",ytitle="value",title="Title"){
  x=c(1:length(invector))
  mod1=lm(invector ~ x)
  plot(x, invector, xlab=xtitle, ylab=ytitle, pch=20, main=title)
    if (line){
      abline(mod1, lwd=2, col="red")
      if(dist){
        res = signif(residuals(mod1), 1)
        pre = predict(mod1)
        segments(x, invector, x, pre, col="red")
        library(calibrate)
        textxy(x, invector, res, cx=0.6)
      }
    }
}

x = c(3,4,7,3,6,8,4,10,11,14,11,17,19)
plot.points(x, line=T, dist=T)
