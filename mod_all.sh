#/bin/bash
year=1980
cd /KRAKEN/DATOS3/PBLHv3/a$year
myhome=/home/mroldan/PBLHv3
for fl in wrfout_c1h_d01_$year*;do
    echo $fl
    ncatted -O -a units,XTIME,o,c,"minutes since $year-01-01 00:00:00" $fl $myhome/temp.nc
    scp $myhome/temp.nc kraken:/DATOS3/Reanalisis/INEGI/PBLHv3/a$year/$fl
done
