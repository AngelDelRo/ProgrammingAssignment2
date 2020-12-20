## Pair of functions that cache the inverse of a matrix

## Creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  ## Initialize the inverse property
  m <- NULL
  
  ##Method to set the matrix
  set <- function(matrix){
    
    y <<- matrix
    m <<- NULL
  }

  ##Method to get the matrix
  get <- function(){
    ##Return the matrix
    y
  }
  
  ##Method to set the inverse of the matrix
  
  setInverse <- function(inverse){
    
    m <<- inverse
    
  }
  ##Method to get the inverse of the matrix
  
  getInverse <- function(){
    ##Return the inverse matrix
    m
  }
  ##Return a list of the methods
  List(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
  
}


## Computes the inverse of matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
    message ("Getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}
