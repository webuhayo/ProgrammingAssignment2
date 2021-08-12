## Put comments here that give an overall description of what your
## functions do

## Creates a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  #initialize value to other environment
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  #gets the matrix values
  get <- function() x
  
  #sets matrix inverse 
  setInv <- function(inverse) inv <<- inverse
  
  #get the inverse matrix values
  getInv <- function() inv
  list(set = set, get = get, setInv = setInv, getInv = getInv)
}



## Checks if the matrix has changed and if there is already a cached inverse, then returns that.
## Calls makeCacheMatrix if there isn't one yet or the matrix has changed

cacheSolve <- function(x, ...) {
  #checking if matrix inverse exists in cache and returns it if it does
  inv <- x$getInv()
  if(!is.null(inv)) {
    message("retrieving cached inverse")
    return(inv)
  }
  
  # checking the matrix to be inverted
  data <- x$get()
  
  #runs the matrix through solve to get its inverse
  inv <- solve(data, ...)
  
  #cache the new inverse
  x$setInv(inv)
  
  #return the inverse
  inv
}


