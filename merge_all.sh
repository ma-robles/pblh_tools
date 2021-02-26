#/bin/bash
year=1979
rm ./temp2.nc
cd /KRAKEN/DATOS3/PBLHv3/a$year
myhome=/home/mroldan/PBLHv3
dest='temp.nc'
for fl in wrfout_c1h_d01_$year*;do
  echo $fl
  if [[ -n $src ]]; then
    echo "cdo -O mergetime $src $fl $myhome/$dest"
    cdo -O mergetime $src $fl $myhome/$dest
    mv $myhome/$dest "$myhome/temp2.nc"
    echo "src=$myhome/temp2.nc"
    src="$myhome/temp2.nc"

  else
    src=$fl
    echo "src = $src "
  fi
done
