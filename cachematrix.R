## The first function works to make a matrix that cache's the inverse of cache

## These functions work to create a matrix environment that when ran, will calculate
## the inverse and cache the input.

makeCacheMatrix <- function(x = matrix()) {
 inverse <- NULL
 set <- function(y) {
   x <<- y
   inverse <<- NULL
 }
 get <- function() x
 setinverse <- function(inverse) inverse <<- inverse
 getinverse <- function() inverse
 list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## The second function works to calculate the inverse of the matrix

cacheSolve <- function(x, ...) {
        inverse <- x$getinverse()
  if(!is.null(inverse)) {
    mesage("acquirring cached matrix")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data,...)
  x$setinverse(inverse)
  inverse
}
