# HW1

n = 1000
p = 0.02
B = sample(c(0,1),n, prob=c(1-p,p),replace=T)

sens = 0.999
spec = 1-0.005
u = runif(n)                      # n Unif(0,1) r.v.’s
A = ifelse(B==1,u<sens,u<1-spec)  # p(A|B=1)=sens, p(A|B=0)=1-spec

nBA = sum(A & B)
nA = sum(A)
pBgivenA = nBA/nA

f <- function(p=0.02){
  n = 10000
  B = sample(c(0,1),n, prob=c(1-p,p),replace=T)
  
  pBgivenA = nBA/nA
  return(pBgivenA)
}

pgrid <- seq(from=0.01,to=0.5,length=100)
y <- rep(0,100)
for(i in 1:100)
  y[i] <- f(pgrid[i])
plot(pgrid,y,type="l",bty="l",xlab="Pr(B)",ylab="Pr(B | A)")
sens = 0.999
abline(h=sens,lty=2,col=2)