
## function below caches the matrix by getting inverse from getinv() and can be used by setting using setinv()

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
            set <- function(y) {
              x <<- y
              i <<- NULL
            }
            
            get <- function() x
            
  setinv <- function(inv) i <<- inv
  getinv <- function() i
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Return a matrix that is the inverse of 'x', gets and set the matrix value for caching results
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
i <- x$getinv()
  if(!is.null(i)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  
  i <- solve(data, ...)
  x$setinv(i)
  i
}
