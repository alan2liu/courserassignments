
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set<-function(y){
        x<<-y
        inverse<<-NULL
    }
    get <- function() x
    setverse <- function(inverse) inverse <<- inverse
    getverse <- function() inverse
    list(set = set, get = get,
         setverse = setverse,
         getverse = getverse)    
  
}

try<-makeCacheMatrix(x=matrix(rnorm(16,0,1),4,4))
try


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
    inverse <- x$getverse()
    if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
    }
    data <- x$get()
    inverse <- solve(data, ...)
    x$setverse(inverse)
    inverse
}

cacheSolve(x=try)

