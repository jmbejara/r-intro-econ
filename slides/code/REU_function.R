##==============================================================================
## REU_function.R
##==============================================================================


NumInt <- function(N, seed=1234) {
	
	# Computes an approximation to Pr(a<X<b), where X is standard Normally distributed.
	# INPUT:  M, the number of simulated (x,y)-pairs, integer
	#         a, left bound, double
	#         b, right bound, double
	# OUTPUT: approximation, double
	
	# Error handling
	if (N <= 0) { 
		print('Error: need N > 0')
		return()
	}
	
  ## SET PARAMETERS
  set.seed(seed)  # fix the randomization seed
  N <- 10000  # set the number of simulated (x,y)-pairs
  a <- 0  # set the left bound
  b <- 1  # set the right bound
  l <- 0  # set the lower bound
  u <- 1# calculate the upper bound
  
  # We can use the runif() command to generate pseudo-random numbers on the
  # intervals that we specified when we set the parameters.
  
  
  ## SIMULATE RANDOM VALUES
  x <- runif(N, min = a, max = b)  # simulate random x-values from U[a,b]
  y <- runif(N, min = l, max = u)  # simulate random y-values from U[l,u]
  
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
  approximation <- fraction * area * 4
  
	# Have the function return the final result
	return(approximation)
}
