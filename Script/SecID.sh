#!/bin/bash

# Bikin folder temporary
mkdir -p tmp/
cd tmp/

# download semua
wget -nH -np -nd -r -t 1 -w 1 \
  http://www.idxdata3.co.id/Download_Data/SecurityID/

# Masukin ke folder jadi
cp -v *.csv ../SecurityID/

# Keluar dan hapus dari folder temporary 
cd ..
rm -rf tmp/
echo "Temporary telah dihapus"
