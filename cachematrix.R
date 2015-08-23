## Put comments here that give an overall description of what your
## functions do
## This file will calculate the inverse matrix of a matrix, and then stores it into cache
## once the inverse matrix needs to be used, the function will find its value. If the 
## value exists, then it will return. Otherwise it will calculate its new value.

## Write a short comment describing this function
## Create a cache which is used for store the inverse value of a matrix x
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  #set the matrix value
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  #get the value of the matrix
  get <- function() {x}
  setInverse <- function(inverse) {m <<- inverse}
  getInverse <- function() {m}
  #create a list including those values
  list(set=set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m))
  {
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  m
}
