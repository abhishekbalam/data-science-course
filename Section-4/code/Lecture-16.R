# Loops 

## For

for(i in 1:10){
  print(i)
}

x <- c(2,10,100)
for(i in x){
  print(i)
}

for(i in 1:3){
  print(paste("i =",i))
  for(j in 1:3){
    print(paste("j =", j))
  }
}

## While

i <- 1
while(i <= 10){
  print(i)
  i <- i+1
}

i <- 1
while(TRUE){
  print(i)
  i <- i+1
  if (i > 10) break
}

## With Conditions

for (i in 1:10){
  if(i%%2 != 0){
    next
  } else{
    print(i/2)
  }
}

for (x in 1:10){
  if(x>=1 & x<=5){
    print("x is between 1 and 5.")
  } else if(x>5 & x<=10){
    print("x is between 6 and 10.")
  } else {
    print("x is not between 1 and 10.")
  }
}

## Vectorized If statements

x <- c(1, 5, 10, 100)
result <- ifelse(x >=10, x*2, x)
print(result)