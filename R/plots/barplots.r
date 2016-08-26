##' Create Barplot of a table and add a lable with value (absolute or percentage)
##'
##' @title doBarPlots
##' @param inTable 
##' @param percentage 
##' @param subtitle 
##' @param main 
##' @param ylab 
##' @return 
##' @author Dimtiris Kavroudakis, dimitris123@gmail.com, www.dimitrisk.gr
doBarPlots <- function(inTable, percentage=F, subtitle=T,main="main", ylab="ylab"){
  barpos=barplot(inTable,
                 main=main, 
                 ylab=ylab,
                 names.arg=unlist(dimnames(inTable)),
        border="blue", density=c(80) )
  
  sub=paste(length(inTable),"categories  | ",sum(inTable),"cases")
  if(subtitle){mtext(sub, side=3, line=0.3, cex=0.9)}
  
  library(plotrix)
  if (percentage){
    labels=inTable/(sum(inTable)/100)
    boxed.labels(barpos,inTable/2, paste(formatC(labels, 1, format="f"), "%", sep="")   )
  } else {
    labels=inTable
    boxed.labels(barpos,inTable/2, formatC(labels) )
  }
  box()
}

x = c(3,4,3,3,3,4,1,2,2,2,3,1,4)
xtable=table(x)
doBarPlots(xtable)
