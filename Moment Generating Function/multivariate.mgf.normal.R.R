#------------------------------------------------------
# Multivariate Normal: Moment Generating Function (MGF)
#------------------------------------------------------

## parameters

rho_12 <- -0.75; rho_13 <- 0.4; rho_23 <- -0.1
mu1 <- 0 ; mu2 <- 0 ; mu3 <- 2
s1 <- 2; s2 <- 1; s3 <- 1

# mean
mu <- c(mu1, mu2, mu3) 

# covariance matrix
# cov_12 = s1*s2*rho_12
Sigma <- matrix(c(s1^2, s1*s2*rho_12, s1*s3*rho_13, 
                  s2*s1*rho_12, s2^2, s2*s3*rho_23,
                  s1*s3*rho_13, s2*s3*rho_23, s3^2), nrow = 3)


t <- c(0,0,0)

mgf <- exp((t(t) %*% mu) + 0.5* t(t) %*% Sigma %*% t )  
dmgf.dt <- (mu +  Sigma %*% t) %*%  exp((t(t) %*% mu) + 0.5* t(t) %*% Sigma %*% t )  
dmgf.dt

#       [,1]
# [1,]    0
# [2,]    0
# [3,]    2

#----
# end 
#----