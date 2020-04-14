## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## THis functionns makes the cache of the given matrix

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y){
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setmatrix <- function(solve) s <<- solve
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
      return(m)
  }
  data <- x$get()
  s <- mean(data,...)
  x$setmatrix(s)
  s
}
