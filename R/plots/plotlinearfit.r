##' Fit a line in a linear model.
##'
##' @title plotLinearFit
##' @param x 
##' @param y 
##' @param title 
##' @author Dimitris Kavroudakis, www.dimitrisk.gr
plotLinearFit = function (x, y, title) {
  plot(x,y, xlab="x axis", ylab="y axis", main=title, ylim=c(0,20), xlim=c(0,20), pch=15, col="blue")
  # fit a line to the points
  myline.fit = lm(y ~ x)
  # get information about the fit
  summary(myline.fit)
  # draw the fit line on the plot
  abline(myline.fit)
}

# Draw a plot, set a bunch of parameters.
x = c(3,4,7,3,6,8,4,10,11,14,11,17,19)
y = c(3,6,7,3,6,7,8,14,18,12,9,15,10)
plotLinearFit(x,y, "Fitted line")
