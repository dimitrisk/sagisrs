##' Multiple boxplots with a line connect the means.
##'
##' @title plotBoxplotsWithLine
##' @param df 
##' @param group 
##' @param variable 
##' @param intitle 
##' @return 
##' @author Dimtiris Kavroudakis, dimitris123@gmail.com, www.dimitrisk.gr
plotBoxplotsWithLine = function(df,group,variable, intitle="title"){
  boxplot( variable ~ group, data=df, col="lightgray", density=c(40))
  means <-= tapply(variable,group,mean)
  points(means,col="red",pch=18)
  lines(means,col="red" )
  title(intitle)
}

sample1 = c(9,4,7,3,6)
sample2 = c('a','a','a','b','b')
df=data.frame(sample1,sample2)
plotBoxplotsWithLine(df,sample2,sample1, "Multiple box plots with means")
