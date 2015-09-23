## This is the first of a pair of functions that cache the inverse of a matrix.

## This function creates a special "matrix" object that can cache its inverse. 

makeCacheMatrix <- function(x = matrix()) { 
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL      ## Cache contents absent or invalid
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse  ## Cache the inverse
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
} 
