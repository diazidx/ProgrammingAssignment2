## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function:
## The function has 4 parts: 
## The first thing is Setting the value of the matrix, the it Gets the value
## the next step accordingly to the program is, setting the inverse matrix and finally
## getting that value.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set,
         get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function:
## The following function gets the inverse matrix calculated by makeCacheMatrix. 
## if the the matrix is already calculated it gets the result from the cache.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if (!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
