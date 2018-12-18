# Vector 2

# using environment vars sections
# clear all by going to Session>Clear workspace

# VECTOR HAS ONLY ONE TYPE OF DATA

v1 <- c(1,2,3)
v1 <- c(4,5,6)

v3 <- c(v1,v2)

v4 <- c(c(1,23), c(4,5,6))

v5 <- c(1, "A")

str(v5) # casting to string

v6 <- c(3, TRUE)
v7 <- c(3, FALSE, "ABC")
str(v7) # all to string

v8 <- 1:100

v9 <- seq(10) # same as above

seq(from=5, to=100, by=3)
seq(from=5, to=100, length.out=3)

rep(1, times=5)
rep(c(1,3,5), times=5, each=2)
# 113355..

v10 <- rnorm(10, mean=0, sd=1) # Normal dist
v10

v <- 1:100
sample1 <- sample(v, size=10, replace=TRUE) # replace in set after draw 

