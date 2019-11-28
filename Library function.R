library(scatterplot3d)
scatterplot3d(x=x[idx], y=x[idx+1], z=x[idx+2], angle=20,
              xlab="x", ylab="y", zlab="z")
Finv <- function(x) {
  if(any(x<0) || any(x>1)) stop("Error, x must be in [0,1]")
  res <- numeric(length(x))
  res[x >= 0.5] <- 1 - sqrt(2*(1-x[x >= 0.5]))
  res[x < 0.5] <- sqrt(2 * x[x < 0.5]) - 1
  return(res)
}
N <- 10000
u <- runif(n=N)
x <- Finv(u)
hist(x, freq=FALSE, main="")

