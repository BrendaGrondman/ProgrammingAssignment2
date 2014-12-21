<<<<<<< HEAD
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
=======

# makeCacheMatrix makes a list containing 4 functions: the original matrix and its cached inverse matrixes. Both can be
# 'setted' or 'getted'. Therefore this list has 4 functions.

makeCacheMatrix <- function(x = numeric()) {  # function with input a matrix x
  inverse <- NULL         # inverse is set to null when makeCacheMatris is called
  set <- function(y) {
    x <<- y               # takes an input matrix y and saves it
    inverse <<- NULL      # resets the mean to NULL, 
    } 
  get <- function() x     # this function returns x, the input of makeCacheMatrix
  set_inv <- function(inv) inverse <<- inv
    # set_inv is called by cacheSolve when first used, and will store the value using superassignment 
  get_inv <- function() inverse
    # returns inverse on next access. 
  list(set = set, get = get,
       set_inv = set_inv,
       get_inv = get_inv)
    # list containing functions, can be used in cacheSolve    
}

# This function returns the inverse of the input matrix. When the result is not in cache, it calculates the
# inverse. If the inverse of the matrix is in cache, it returns the cached inverse matrix.

cacheSolve <- function(x, ...) {    # function with input x, which is created by makeCacheMatrix
  inverse <- x$get_inv()            # Looks if there is already an inverse calculated for x
  if(!is.null(inverse)) {           # if the inverse is in cache, sends message and inverse.
    message("getting cached data")   
    return(inverse)   
  }   
  data <- x$get()                   # if the inverse is not in cache, we are going to calculate it 
  inverse <- solve(data)            # calculate inverse
  x$set_inv(inverse)                # store the inverse in set_inv.
  inverse                           # return the inverse
}
>>>>>>> Final submission Coursera
