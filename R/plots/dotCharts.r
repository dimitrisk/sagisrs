# DOTCHART with ordered values
dot.chart<- function(df,column,labels, intitle){
  library(Hmisc)
  par(cex=0.9 )
  ss= df[with(df,order(df[[column]])),]
  jim=ss[[column]]
  dotchart(jim/1000,labels=ss[[labels]], xlim=range(jim)/1000, xlab="Distance in Km")
  title(intitle)
}

x = c(3,4,7,3,6,8,4,10,11,14,11,17,19)
y = c(3,6,7,3,6,7,8,14,18,12,9,15,10)
df=data.frame(x,y)
dot.chart(df,x,as.character(x),"Ordered dot chart")