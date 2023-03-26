#-------------------------------------------------------------------
# Generate a table of Standard Normal distribution: area under curve
#-------------------------------------------------------------------

setwd("C:/Users/julia/OneDrive/Desktop/github/21. Normaltable")
library(xtable)

u=seq(0,3.09,by=0.01)
p=pnorm(u)
m=round(matrix(p,ncol=10,byrow=TRUE),4)
colnames(m) = seq(0, 0.09, by = 0.01)
rownames(m) = seq(0,3, by = 0.1)

# export the results in LaTex document
print(xtable(m, type = "latex", digits=4), file = "tables.tex")

#----
# end
#----