##==============================================================================
## REU_integration.R
##==============================================================================

## SETTING THE WORKING DIRECTORY
# setwd("C:/Users/Test/Dropbox/Teaching/REU/Code/R")


## CLEARING THE WORKSPACE
rm(list = ls())

# We want to simulate N random (x,y)-pairs on the rectangle [0,1]X[0,1]

# Before we do anything, we set up the parameters that we need in the 
# calculation, at the beginning of the file, so that we can easily find and 
# change them later. The parameters are:
# 		- the seed for the random number generator (fixing this makes ensures 
# 			that you get the same pseudo-random numbers next time you run this code)
# 		- N: the number of simulated pairs
# 		- a, b, l, and u: the bounds of rectangle


## SET PARAMETERS
set.seed(1234)  # fix the randomization seed
N <- 10000  # set the number of simulated (x,y)-pairs
a <- 0  # set the left bound
b <- 1  # set the right bound
l <- 0  # set the lower bound
u <- 1# calculate the upper bound

# Now that we've set the parameters of our problem, we can calculate the area 
# of our rectangle and save it in a new object, which we will call area.


## CALCULATE AREA OF THE RECTANGLE
area <- (b - a) * (u - l)  # calculate the area of the rectangle

# We can use the runif() command to generate pseudo-random numbers on the
# intervals that we specified when we set the parameters.


## SIMULATE RANDOM VALUES
x <- runif(N, min = a, max = b)  # simulate random x-values from U[a,b]
y <- runif(N, min = l, max = u)  # simulate random y-values from U[l,u]

# We can use the hist() command to plot a histogram of the simulated y-values:
hist(y)  # create a histogram of the y-values


## CALCULATE FRACTION BELOW THE CURVE
# y^2 + x^2 = 1
# y = sqrt(1-x^2)
# Now we move on to the actual calculations. First we create a vector with ones 
# in places where the corresponding (x,y)-pair is in the area that we want to 
# calculate:
isBelow <- y < sqrt(1-x^2)

# We calculate the fraction of times the (x,y)-pair is in the area that we want 
# to calculate and from that calculate our approximation of the integral:
fraction <- sum(isBelow) / N
approximation <- fraction * area
approximation


## PLOTS
# To get some intuition for what just happened, let's plot the (x,y)-pairs that 
# were below the function whose integral we tried to approximate. We use the R 
# command plot() and instruct R to plot the pairs that we have determined 
# to be below the curve in black, and the other pairs in red.
plot(x[isBelow],y[isBelow])
points(x[!isBelow],y[!isBelow],col = 'red')


## CHECK THE RESULT
# A = pi * r^2
# approximation * 4 = A
# pi \approx approximation * 4 / r^2
cat("Pi is approximately: ", approximation * 4)
pi

out = integrate(function(x) sqrt(1-x^2), 0, 1)
out$value * 4

# R has a lot of built-in probability functions: pnorm(), dnorm(), rnorm(),
# qnorm(), punif(), dunif(), runif(), qunif(), pexp(), etc. 
# Use the help function to get details on their syntax.