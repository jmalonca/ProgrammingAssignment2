## Function makeCacheMatrix. It stores four functions related to
## an input matrix in a list: get, that caches que current matrix elements, 
## set, that changes or init to NULL the matrix elements, and the
## same for getmatinv and setmatinv with the inverted matrix elements
## input: a matrix object (standard invertible matrix)
## ouput: a list of four functions(get,ser,getmatinv,setmatinv)

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatinv <- function(solve) m <<- solve
        getmatinv <- function(solve) m <<- solve
        list(set = set, get = get,
             setmatinv = setmatinv,
             getmatinv = getmatinv)        
}

