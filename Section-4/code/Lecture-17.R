# Custom Functions

firstFunction <- function(){
  print("Hello World")
}

areaOfCircle1 <- function(radius){
  area <- pi * radius^2 # inbuilt pi
  return(area)
}

print(areaOfCircle1(23))

# PI <- 3.1415927

areaOfCircle2 <- function(radius){
  PI <- 3.1415927
  area <- PI * radius^2
  return(area)
}

print(areaOfCircle2(23))

# Default params
areaOfCircle3 <- function(radius= 1){
  PI <- 3.1415927
  area <- PI * radius^2
  return(area)
}

print(areaOfCircle3())

circleParams <- function(radius = 1){
  area <- pi * radius^2
  circumference <- 2 * pi * radius
  result <- list(area=area, circumference=circumference)
  return(result)
}

print(circleParams())
result<-circleParams(radius =5)
print(result$area)
print(result$circumference)