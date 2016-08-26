##' Plot distribution of a sample with bars, lines and rug.
##'
##' @title 
##' @param x 
##' @return 
##' @author Dimtiris Kavroudakis, dimitris123@gmail.com, www.dimitrisk.gr
plotDistribution = function (x) {
  N = length(x)
  hist( x,col = "light blue",
        #xlim = range(unique(x)), 
        #ylim = c(0, .8),
        probability = TRUE)
  lines(density(x), col = "red", lwd = 3)
  rug(x)
}

x = c(3,4,4,4,7,5,5,5,6,8,4,2)
plotDistribution(x)