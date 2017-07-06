## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## creating cache matrix and checking if null
makeCacheMatrix <- function(x = matrix()) {
		m <- NULL
		set <- function(y){
			x <<- y
			m <<- NULL
		}
		get <-function() x
		setsolve <- function(solve) m <<- solve
		getsolve <- function() m
		
		list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## Write a short comment describing this function
## solving cache matrix and returning value
cacheSolve <- function(x) {
	 m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setsolve(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
