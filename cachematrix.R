## Put comments here that give an overall description of what your
## functions do

## Saves the original source matrix for comparing, and caches the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
  ogMatrix <<- x
  cachedMatrix <<- solve(x)
}



## Checks if the matrix has changed and if there is already a cached inverse, then returns that.
## Calls makeCacheMatrix if there isn't one yet or the matrix has changed

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(!is.null(cachedMatrix)&&ogMatrix==x){
    return(cachedMatrix)
  }else{
    makeCacheMatrix(x)
    return(cachedMatrix)
  }
}