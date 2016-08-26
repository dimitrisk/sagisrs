# Load some spatial libraries. The sequence matters! Some functions
# are masked from previous, in sequence, libraries.
library("spatial")
library("spatstat")
#library("gstat")
library("maptools")
library("rgdal")

# Load the Swedishpines datadet.
data(swedishpines)
X = swedishpines #It is a Point Pattern Proccess of spatstat

names(swedishpines) 

plot(X)
summary(X)


# Plot a density surface

# Epanechnikov kernel of bandwidth 10
plot(density(X,10, kernel="epanechnikov"))
# Plot a contour surface
contour(density(X, 10), axes=FALSE) 
#The contours are labelled in density units of “trees per square decimetre”.

# Constuct and plot a quadrat count grid
Q <- quadratcount(X, nx=4, ny=3) # nx, ny = number of grid cells for each axis
plot(X)
plot(Q, add=TRUE, cex=2)

# K-function
K <- Kest(X)
plot(K) 
# Monte Carlo simulation for the construction of a min-max envelope
E <- envelope(X, Kest, nsim = 99) # For 99 permutations we have 99% c.i.
plot(E)