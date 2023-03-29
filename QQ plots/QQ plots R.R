#------------------------
# Quantile-Quantile plots
#------------------------

# 1. Genrate artificial data
set.seed(2020)
sample1 = rnorm(200, mean = 0, sd = 1)
sample2 = rt(200, df = 1)
sample3 = rgamma(200, shape = 2, rate = 2)
sample4 = -sample3
sample5 = rbind(rnorm(60, mean = 0, sd = 1), rnorm(140, mean = 6, sd = 1))
sample6 = rbind(rnorm(60, mean = 0, sd = 1), rgamma(140, shape = 1, rate = 2))

# 2. Plot
par(mfrow=c(1,2))
plot(density(sample1), 'Normal')
qqnorm(sample1, pch = 1, frame = FALSE)
qqline(sample1, col = "darkred", lwd = 2)

par(mfrow=c(1,2))
plot(density(sample2), 'Cauchy ')
qqnorm(sample2, pch = 1, frame = FALSE)
qqline(sample2, col = "darkred", lwd = 2)

par(mfrow=c(1,2))
plot(density(sample3), 'Gamma - Right skewed')
qqnorm(sample3, pch = 1, frame = FALSE)
qqline(sample3, col = "darkred", lwd = 2)

par(mfrow=c(1,2))
plot(density(sample4), '-Gamma - Left skewed')
qqnorm(sample4, pch = 1, frame = FALSE)
qqline(sample4, col = "darkred", lwd = 2)

par(mfrow=c(1,2))
plot(density(sample5), 'Mixture of Normals')
qqnorm(sample5, pch = 1, frame = FALSE)
qqline(sample5, col = "darkred", lwd = 2)

par(mfrow=c(1,2))
plot(density(sample6), 'Mixture Normal-Gamma')
qqnorm(sample6, pch = 1, frame = FALSE)
qqline(sample6, col = "darkred", lwd = 2)

#----
# end
#----