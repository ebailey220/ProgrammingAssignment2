## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  ##Set matrix
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  ##Inverse the matrix
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  
  ##Return matrix methods
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	##return matrix inverse of x
  i <- x$getinverse()
  ##return the inverse if already set
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  ##Get object
  data <- x$get()
  ##calculate inverse
  i <- solve(data, ...)
  ##set inverse to object
  x$setinverse(i)
  i
}
