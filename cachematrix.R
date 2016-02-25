## Put comments here that give an overall description of what your
## functions do

## The first function, makeVector creates a special "matrix", which is really a list containing a function to
## 1. Set the value of the matrix
## 2. Get the value of the matrix
## 3. Set the value of the matrix's inverse
## 4. Get the value of the matrix's inverse

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set <- function(Y){
	X <<- Y
	inverse <<- NULL
	}
get <- function() X
setinverse <- function(Inverse) inverse <<- Inverse
getinverse <- function() inverse
list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## This function first checks to see if the special "matrix" inverse has been calculated. If it has, it gets the value 
## from the cache. Otherwise it calculates and returns the inverse value of the matrix and stores it in the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inverse <- X$getinverse()
if(!is.null(inverse)){
	message("matrix is in memory")
	return(inverse)
message("inverse is not in memory so the inverse (if exist) is gonna be computed")
data <- X$get()
inverse <- pseudoinverse(data, ...)
X$setinverse(inverse)
inverse
}
