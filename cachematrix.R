## Put comments here that give an overall description of what your
## functions do
## function makeCacheMatrix creates a special vector for the calculation of inverse of a matrix and returns list
## function cacheSolve soles the matrix to create the inverse of the matrix and returns the inverse of the given matrix

## Write a short comment describing this function
## THis functionns makes the cache of the given matrix

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y){
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setmatrix <- function(inverse) s <<- inverse
  getmatrix <- function() s
  list(set=set,get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}


## Write a short comment describing this function
## If the matrix is already inverted then it is not changed
## it also retrieves the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getmatrix()
  if(!is.null(s)){
      message("getting cached matrix")
      return(s)
  }
  data <- x$get()
  s <- solve(data,...)
  x$setmatrix(s)
  s
}
