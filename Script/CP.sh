#!/bin/sh

# Bikin folder temporary
mkdir -p tmp/
cd tmp/

# Masukin data dari idx ke folder temporary
cp -v ~/www.idxdata.co.id/Download_Data/Daily/Closing_Price/*.zip .

# Ekstrak pake unzip tiap file-nya
for x in *.zip
 do
  unzip $x
  echo "Unzip $x"
 done

# Convert jadi csv pake dbfdump.pl dari paket perl-DBD-XBase
for x in *.DBF
 do
  dbfdump.pl --fs "|" $x > `basename $x ".DBF"`.csv
  echo "Convert DBF 2 PSV (Pipeline Separated Volume) $x"
 done

# Masukin ke folder jadi
cp -v *.csv ../Daily_Closing_Price/

# Keluar dan hapus dari folder temporary 
cd ..
rm -rf tmp/
echo "Temporary telah dihapus"
