## These functions computes and caches the inverse of a matrix so that
## if the same matrix inversion is needed again, it does not have to be computed
## but can be retrieved from the cache

# Test matrices:
#  x <- matrix(c(1,3,2,4),nrow=2,ncol=2)
#  x <- matrix(c(1,0,5,2,1,6,3,4,0),nrow=3,ncol=3)
#  x <- matrix(c(1,2,3,2,3,1,3,-1,2),nrow=3,ncol=3)
#  x <- matrix(c(1,2,3,4,5,6,7,8,9,10,10,-9,8,7,-6,5,4,3,-2,1,-1,2,3,-4,-5),nrow=5,ncol=5)

## Write a short comment describing this function
#  The makeCacheMatrix function creates a special "matrix" object to cache 
#  its inverse. The object contains a list of functions to 'set' and 'get' a matrix
#  and functions 'setinverse' and 'getinverse' to set and get the inverse of 
#  the matrix.
#  The function first initializes a variable 'i' with a NULL value. 
#  This variable 'i' is used to cache the inverse of the matrix in the environment
#  of the function makeCacheMatrix. 

makeCacheMatrix <- function(x = matrix()) {

	invmx <- NULL
		
	set <- function(y) {
		x <<- y
		invmx <<- NULL
	}
	
	get <- function() x

	## set inverse of matrix
	setinverse <- function(solve) invmx <<- solve

	## get inverse of matrix
	getinverse <- function() invmx
	
	list(set = set, get = get,
	     setinverse = setinverse,
	     getinverse = getinverse)
	
}


## Write a short comment describing this function
# The function cacheSolve computes the inverse of the special "matrix" returned by
# the makeCacheMatrix function. If the inverse was already calculated cacheSolve 
# returns the calculated result, otherwise it computes the inverse.

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	
	## get the inverse of the matrix from the environment
	invmx <- x$getinverse()
	
	## check if the inverse retrieved from environment is not null
	## If not null, return the result
	if (!is.null(invmx)) {
		message("Getting cached result")
		return(invmx)
	}
	## If the inverse cached in the environment is null, calculate the inverse
	mx <- x$get()
	invmx <- solve(mx)
	## cache the calculated inverse in the environment
	x$setinverse(invmx)
	invmx	
}

