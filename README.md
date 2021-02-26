# pblh_tools

herramientas para extracción de PBLH

## check_time.py
Verifica que para una lista de archivos (pasados como parámetros), la variable XTIME mantenga la secuencia correcta. Además se imprime las unidades para verificar que son adecuadas. Si la variable XTIME (temporal) no se encuentra correctamente estructurada, se producirán errores al unir los archivos.
Ejemplo de uso:
python check_time.py PBLHv3/a1980/wrfout_c1h_d01_1980*

## mod_all.sh
Modifica las unidades de los archivos correspondientes a todo un año para que correspondan con "minutes since YYYY-01-01 00:00:00".
Esta modificación se hace en un archivo temporal (temp.nc) y despues se copia a la ruta original.
El año se debe indicar modificando el código (variable year)

## merge_all.sh
Concatena todos los archivos de un año, uno a uno, mediante el uso de CDO.
El archivo final se guarda en temp2.nc.
La carpeta del año correspondiente se indica en la variable year
