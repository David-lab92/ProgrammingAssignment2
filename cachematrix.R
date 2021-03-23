## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##The objective of this function "makeCacheMatrix" is to cache the inverse of a matrix.
##For doing that first gets a matrix as an input and sets the value of the matrix.
#After this, the function gets the value of the matrix, sets the inverse Matrix, and gets the inverse Matrix.

makeCacheMatrix <- function(x = matrix()) {
    
}

makeCacheMatrix <- function(x = matrix()) {## This function creates a special "matrix" object that can cache its inverse
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x                          ##get the value of the matrix
    setinv <- function(inverse) inv <<- inverse  ##set the value of the inversion of the matrix
    getinv <- function() inv                     ##get the value of the inversion of the matrix
    list(set = set, get = get,                   ##create a list that is useful at the moment of using
         setinv = setinv ,                             ##the $operator
         getinv = getinv)
}


## Write a short comment describing this function

## The function cacheSolve takes the output of the previous matrix makeCacheMatrix() 
##and computes its inverse.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

cacheSolve <- function(x, ...) {
    inv <- x$getinv()
    if(!is.null(inv)) {                   ##if inverse matrix is not NULL
        message("getting cached data")    ##then it will type "getting cache data"
        return(inv)                       ##and then will return the inversion
    }                                     ##if the value of the inverse matrix is NULL
    matx <- x$get()                       ##then it will get the original data
    inv <- solve(matx, ...)               ##then the command "solve" will be applied to this data
    x$setinv(inv)                         ##after that it will set the inversion of the matrix
    inv                                   ##and lastly it will return it
}
