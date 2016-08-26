##' Plot multiple lines in a graph.
##'
##' @title plotLines
##' @param all 
##' @param xdata 
##' @param title 
##' @param ytitle 
##' @param xtitle 
##' @param legendTitle 
##' @return 
##' @author Dimtiris Kavroudakis, dimitris123@gmail.com, www.dimitrisk.gr
plotLines = function(all,xdata,title="",ytitle="",xtitle="",legendTitle=""){ 
  n=length(all)
  names=names(all)
  colors = rainbow(n)
  linetype = c(1:n)
  plotchar = seq(15,15+n,1)
  rang=range(all)
  xrange = range(xdata)
  yrange = range(all) 
  plot(xrange,yrange, xlab=xtitle,ylab=ytitle )
  for (i in 1:n){
    lines(xdata, all[,i],  type="b", lwd=1.5, lty=linetype[i], col=colors[i], pch=plotchar[i])
  }
  title(title)
  legend("topleft", names, cex=0.9, col=colors,pch=plotchar, lty=linetype, title=legendTitle)
}

y1 = c(3,4,7,3,6,8,4,10,11,14,11,17,19)
y2 = c(3,6,7,3,6,7,8,14,18,12,9,15,10)
x = c(1,2,3,4,5,6,7,8,9,10,11,12,13)
df=data.frame(y1,y2)
plotLines(df,x, "Multiple line plots", "Y", "X","My Legend")
