## Put comments here that give an overall description of what your
## functions do

## Object for cache matrix
makeCacheMatrix <- function(x = matrix()) {

	i <- NULL


	set <- function(y) {
		x <<- y
		m <<- NULL
	}

	get <- function() x


	setInverse <- function(inverse) i <<- inverse

	getInverse <- function() i


	list(set = set,
		get = get,
		setInverse = setInverse,
		getInverse = getInverse)
}


## Function to get the matrix inverse
cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
	i <- x$getInverse()

	if (!is.null(i)) {
		message("getting cache data")
		return(i)
	}

	data <- x$get()

	i <- solve(data)

	x$setInverse(i)

	i
}