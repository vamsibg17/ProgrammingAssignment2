## Put comments here that give an overall description of what your
## functions do

## This function is used to create a matrix object that can cache its inverse.
<<<<<<< HEAD
# Argument parameter: Matrix, Output: List
makeCacheMatrix <- function(x = matrix()) {
  # Initialize the inverse value
      inv=NULL
      
      # Method to set the matrix
=======

makeCacheMatrix <- function(x = matrix()) {
      inv=NULL
>>>>>>> 265e4ca4ac9412d91f1354c9fb76a09eaf1e7617
      set=function(y){
        x<<-y
        inv<<-NULL
      }
<<<<<<< HEAD
      # Method to get the matrix
      get=function()x
      # Method to set the inverse of the matrix
      setinverse=function(inverse) inv<<-inverse
      # Method to set the inverse of the matrix
      getinverse=function()inv
      # Output list
=======
      get=function()x
      setinverse=function(inverse) inv<<-inverse
      getinverse=function()inv
>>>>>>> 265e4ca4ac9412d91f1354c9fb76a09eaf1e7617
      list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## this function is used to compute the inverse of the matrix returned by the above function.
<<<<<<< HEAD
# Argument parameter: Matrix, Output: Inverse Matrix
cacheSolve <- function(x, ...) {
  # Initialize a matrix that is the inverse of x matrix
  inv=x$getinverse()
  
  # Return a matrix if it is the inverse of x matrix
=======

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv=x$getinverse()
>>>>>>> 265e4ca4ac9412d91f1354c9fb76a09eaf1e7617
  if(!is.null(inv)){
    message("getting cache data")
    retunr(inv)
  }
<<<<<<< HEAD
  # Get the matrix from the object
data=x$get()
# Method to solve the inverse using matrix multiplication
inv=solve(data,...)
# Set the inverse of inverse matrix
x$setinverse(inv)
# Return the matrix
=======
data=x$get()
inv=solve(data,...)
x$setinverse(inv)
>>>>>>> 265e4ca4ac9412d91f1354c9fb76a09eaf1e7617
inv
}
