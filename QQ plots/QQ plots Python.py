#------------------------
# Quantile-Quantile plots
#------------------------

import numpy as np
import statsmodels.api as sm
import pylab as py
import random
  
# 1. Genrate artificial data
random.seed(2020)
sample1 = np.random.normal(0, 1, 200)    
sm.qqplot(sample1, line ='45')
py.show()

sample2 = np.random.standard_cauchy(size=200)
sm.qqplot(sample2)
py.show()  

#----
# end
#----