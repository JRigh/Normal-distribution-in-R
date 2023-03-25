#-----------------------------------------------
# Moment Generating Function Normal distribution
#-----------------------------------------------

# 1. function that compute the three first moments of the Normal distribution

mgf.normal <- function(t, sigma, mu){
  
  mgf <- expression(exp(((t^2 * sigma^2)/2) + mu*t))
  dmgf.dt <- D(mgf, "t")
  ddmgt.dtt <- D(dmgf.dt, "t")
  dddmgt.dttt <- D(ddmgt.dtt, "t")
  first.moment <- eval(dmgf.dt)
  second.moment <- eval(ddmgt.dtt)
  third.moment <- eval(dddmgt.dttt)
  output <- NULL
  output$first.moment <- first.moment
  output$second.moment <- second.moment
  output$third.moment <- third.moment
  return(output)
}

mgf.normal( t= 0, sigma = 1, mu = 0)
# $first.moment
# [1] 0
# $second.moment
# [1] 1
# $third.moment
# [1] 0

mgf.normal(t = 0, sigma = 2, mu = 4)
# $first.moment
# [1] 4
# $second.moment
# [1] 20
# $third.moment
# [1] 112
