#!/bin/bash

if [ ! -f `which dbfdump` ]
then
 echo "Script dbfdump dari DBD::XBase tidak ada."
 echo "Silakan hubungi administrator sistem untuk memasang paket tersebut."
 echo "Jalankan 'cpan -i DBD::XBase' dengan akun root."
 exit
fi

