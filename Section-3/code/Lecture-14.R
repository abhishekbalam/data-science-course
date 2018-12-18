v1 <- c(1,2,3)
v2 <- 1:100
m1 <- matrix(nrow=1,ncol=2)
l<-list(Few.Numbers=v1, Lots.of.Numbers=v2, Mat=m1)

df <- data.frame(x=c(TRUE, FALSE< TRUE))

l$Random.DF.object <- df

l[[5]]<-df