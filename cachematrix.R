## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# this protionn of the code creates 4 functions that operate on the matrix to set the matrix values and retrieve the matrix, to invert the matrix and return the inverted version.

makeCacheMatrix <- function(x = matrix()) {
        iv <- NULL
        set <- function(y) {
                x <<- y
                iv <<- NULL
        }
        get <- function() x
        setinv <- function(solve) iv <<- solve
        getinv <- function() iv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## Write a short comment describing this function
#this portion of the code inverts the matrix. But first it checks to see if the inverted matrix is in cache and if so retrieves it instead of performing the operation

cacheSolve <- function(x, ...) {
        iv <- x$getinv()
        if(!is.null(iv)) {
                message("getting cached data")
                return(iv)
        }
        data <- x$get()
        iv <- solve(data, ...)
        x$setinv(iv)
        iv
        ## Return a matrix that is the inverse of 'x'
}
