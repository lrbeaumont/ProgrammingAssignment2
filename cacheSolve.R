## This function computes the inverse of the special "matrix" returned by 
## makeCacheMatrix. 
## If the inverse has already been calculated (and the matrix has not changed),
## then  cacheSolve  should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) { 
         ## Return a matrix that is the inverse of 'x' 
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)  ## Compute the inverse
    x$setinverse(m)
    m
    
} 
