# HW2

Ih <- function(nxy)
{ # input: f= nx x ny table of counts
  # output: MI I(X,Y)
  n <- sum(nxy)
  f <- nxy/n
  fx <- apply(f,1,sum)
  fy <- apply(f,2,sum)
  fx[fx==0] <- 0.01
  fy[fy==0] <- 0.01
  f[f==0] <- 0.01
  fxfy <- fx %*% t(fy)
  I  <- sum(f*log(f/fxfy))
  return(I)
}

# nxy <- matrix(c(10, 9, 2, 10, 7, 2, 17, 11, 5, 22, 18, 7), nrow = 4)
# # Calculate mutual information
# mutual_information1 <- Ih(nxy)
# # Print the result
# print(mutual_information1)
# mutual_information2 <- Ih(nxy)
# print(mutual_information2)
# mutual_information3 <- Ih(nxy)
# print(mutual_information3)
# mutual_information4 <- Ih(nxy)
# print(mutual_information4)
# mutual_information5 <- Ih(nxy)
# print(mutual_information5)

Ihmstar  <- function(Ihm)
{ ## input: list Ihm[1..M] of Ih(X,Y) 
  ## output: threshold Ih* for test
  M <- length(Ihm)
  istar <- round(0.95*M)
  Is  <- sort(Ihm)[istar]
  return(Is)
}

sim  <- function(M,fxh,fyh)
{ ## input: M=#simulations, 
  ##        fxh = marginal on X, fyh = .. on Y
  ## output: Ihm = (M x 1) vector of Ih(X,Y)
  nx <- length(fxh)
  ny <- length(fyh)
  n <- 120
  Ihm  <- rep(0,M) # initialize
  for(m in 1:M){
    xm <- sample(1:nx,n,prob=fxh,replace=T)
    ym <- sample(1:ny,n,prob=fyh,replace=T)
    nxym <- table(xm,ym)
    Ihm[m]  <- Ih(nxym)
  }
  return(Ihm)
}

# Define the observed data (replace with your actual data)
# observed_data <- matrix(c(10, 9, 21, 10, 7, 219, 17, 11, 533, 22, 18, 747), nrow = 4, ncol = 3)
observed_data <- matrix(c(10, 9, 2, 10, 7, 2, 17, 11, 5, 22, 18, 7), nrow = 4)

# Calculate observed MI (I^) based on the observed data
nX <- rowSums(observed_data)
nY <- colSums(observed_data)
n <- sum(observed_data)
fX_Y <- observed_data / n
fX <- nX / n
fY <- nY / n
fX_Y[fX_Y == 0] <- 0.01  # Avoid division by zero
fX[fX == 0] <- 0.01
fY[fY == 0] <- 0.01
I_hat <- sum(fX_Y * log(fX_Y / (fX %*% t(fY))))

# Number of simulations
M <- 100

# Initialize a vector to store simulated MI values
I_hat_prime <- numeric(M)

# Perform M simulations
for (m in 1:M) {
  # Simulate data based on estimated marginals fX and fY
  Xi_prime <- sample(1:4, n, prob = fX, replace = TRUE)
  Yi_prime <- sample(1:3, n, prob = fY, replace = TRUE)
  
  # Calculate MI for the simulated data (I^')
  fX_Y_prime <- table(Xi_prime, Yi_prime) / n
  fX_Y_prime[fX_Y_prime == 0] <- 0.01  # Avoid division by zero
  I_hat_prime[m] <- sum(fX_Y_prime * log(fX_Y_prime / (fX %*% t(fY))))
}

# Calculate the threshold I^* from the simulations
I_hat_star <- quantile(I_hat_prime, 0.95)

# Compare observed MI (I^) with the threshold I^* to make the decision
if (I_hat > I_hat_star) {
  cat("X and Y are likely not independent (I^ >", I_hat_star, ")\n")
} else {
  cat("X and Y are likely independent (I^ <", I_hat_star, ")\n")
}

prob_independent <- sum(I_hat_prime > I_hat_star) / M

cat("Pr(Iˆ > Iˆ⋆) when X and Y are independent:", prob_independent, "\n")

