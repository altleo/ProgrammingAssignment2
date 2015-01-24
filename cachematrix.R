## First commit to test github
## Currently function does nothing other than print the environment

## These functions computes and caches the inverse of a matrix so that
## if the same matrix inversion is needed again, it does not have to be computed
## but can be retrieved from the cache

## Write a short comment describing this function
#  The makeCacheMatrix function creates a special "matrix" object to cache 
#  its inverse. The object contains a list of functions to 'set' and 'get' a matrix
#  and functions 'setinverse' and 'getinverse' to set and get the inverse of 
#  the matrix.
#  The function first initializes a variable 'i' with a NULL value. 
#  This variable 'i' is used to cache the inverse of the matrix in the environment
#  of the function makeCacheMatrix. 

makeCacheMatrix <- function(x = matrix()) {

	i <- NULL
	
	print(environment())
	
}


## Write a short comment describing this function
# The function cacheSolve computes the inverse of the special "matrix" returned by
# the makeCacheMatrix function. If the inverse was already calculated cacheSolve 
# returns the calculated result, otherwise it computes the inverse.

cacheSolve <- function(x = matrix(), ...) {
	## Return a matrix that is the inverse of 'x'
	

}
