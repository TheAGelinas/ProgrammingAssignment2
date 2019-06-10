## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      ##@x: a square invertible matrix
      ## return: a list containing functions to
      ##1.set the matrix
      ##2.get the matrix
      ##3.set the inverse
      ##4.get the inverse
      ##this list is the input to the cacheSolve() function
  inv=NULL
  set=function(y){
    ##<<- assigns a value to an object in a different environment
    x<<-y
    inv<<-NULL
  
  
}
get=function() x
setinv=function(inverse) inv <<- inverse
getinv=function() inv
list(set=set, get=get, setinv=setinv, getinv=getinv)
}

cacheSolve<- function(x, ...) {
  ##x:output of makeCacheMatrix()
  ##return inverse of original matrix
  
  inv=x$getinv()
  
  ##if the inverse was already calculated
  
  if (!is.null(inv)){
    return(inv)
    
  }
##if the inverse was not already calculated
  mat.data=x$get()
  inv=solve(mat.data, ...)
  
  #set the value of the inverse
  
  x$setinv(inv)
  
  return(inv)
  
}
