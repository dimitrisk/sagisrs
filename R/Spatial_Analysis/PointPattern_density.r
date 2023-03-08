
# Generate a point pattern for further analysis.
makePointPattern = function(Xs,Ys){
  library(spatstat)
  win=owin(range(Xs),range(Ys))
  return(ppp(Xs,Ys,window=win))
}

# Data
x=c(10,4,2,5,7,8,9)
y=c(4,5,6,7,8,9,6)

# Make a point pattern
pp=makePointPattern(x,y)

# make a density of the points with 0.6 smoothing bandwith.
den=density(pp,0.6)

# Plot all
plot(den)
contour(den,  add=T)
plot(pp, add=T, pch=17)

# For Gaussian kernel the bw tag can be used.
# bw.nrd is the more common variation given by Scott (1992), using factor 1.06.
den=density(pp, bw='nrd')

# Plot all
plot(den)
contour(den,  add=T)
plot(pp, add=T, pch=17)
