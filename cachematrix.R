## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ogMatrix <<- x
  cachedMatrix <<- solve(x)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(!is.null(cachedMatrix)&&ogMatrix==x){
    return(cachedMatrix)
  }else{
    makeCacheMatrix(x)
    return(cachedMatrix)
  }
}