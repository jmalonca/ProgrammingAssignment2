## cacheSolve function: provide the inverted matrix of a 
## given matrix. The given matrix has been cached by  
## makeCacheMatrix function.
## Use:
##      > x <- matrix()
##      > a <- makeCacheMatrix(x)
##      > cacheSolve(a)

cacheSolve <- function(x, ...) {
        m <- x$getmatinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatinv(m)
        m
}