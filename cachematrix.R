## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(a = matrix()){
  invs <- NULL
  set <- function(b) {
    a <<- b
    invs <- NULL
  }
  get <- function() a
  setinverse <- function(inverse) invs <<- inverse
  getinverse <- function() invs
  list(set=set, get=get, setinverse=setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(a, ...){
  invs<- a$getinverse()
  if(!is.null(invs)){
    message("getting cached dat")
    return(invs)
  }
  data <- a$get()
  invs <- solve(data, ...)
  a$setinverse(invs)
  invs
}
