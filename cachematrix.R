## Functions for caching a matrix and its inverse

## This functions is for caching a matrix and its inverse
## Made as assignment in R Programming course.
## Based on the example provided

makeCacheMatrix <- function(x = matrix()) {
        ## Function for caching a matrix and its inverse
        inverse <- NULL
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        setinverse <- function(cacheSolve) inverse <<- cacheSolve
        getinverse <- function() inverse
        list(set = set, get = get,
                 setinverse = setinverse,
                 getinverse = getinverse)
}


## This function computes the inverse of a provided matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        solve(x)
}
