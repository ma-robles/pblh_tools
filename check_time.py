from netCDF4 import Dataset
import sys
import numpy as np

#varname=sys.argv[2]
varname="XTIME"
i=0
step=60
for filename in sys.argv[1:]:
    with Dataset(filename,'r',) as root:
        val=root[varname][:]
        print(filename, varneme, root[varname].units)
    nval=np.arange(i, i+val.shape[0]*step,step)
    if  not np.array_equal(val,nval) or val.shape[0]!=24:
        print('Error!')
        print('file values:')
        print(val.shape[0], val)
        print('must be')
        print(nval)
        break
    i=nval[-1]+step

