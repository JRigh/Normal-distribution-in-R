#-------------------------------------------------------------------
# Generate a table of Standard Normal distribution: area under curve
#-------------------------------------------------------------------

import numpy as np

u = np.linspace(start=0, stop=3.09, num=310)

from scipy.stats import norm

p = norm.cdf(u)
res = np.array([[p]]).reshape(31, 10)

import pandas as pd

resdf = pd.DataFrame(data = res.round(4), 
                     index = np.linspace(start=0, stop=3, num=31),
                     columns = np.linspace(start=0, stop=0.9, num=10))


# export the results in LaTex document
print(resdf.to_latex())

#----
# end
#----