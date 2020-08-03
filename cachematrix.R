## Put comments here that give an overall description of what your
## functions do

## there are two functions makeCacheMatrix,cacheSolve

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                 x <<- y
                 inv <<- NULL
  }
  get <- function() {x}           
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set=set, get=get, setInverse = setInverse, getInverse = getInverse)
}


## the below function is used to get the cache data

cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)                           
  }
  mat <- x$get()
  inv <- solve(mat,...)
  x$setInverse(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}
