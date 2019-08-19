#!/bin/bash

if [[ -f /var/www/html/db.sql ]]; then
    mysql -e "source /var/www/html/db.sql" -uroot -proot
    rm -f /var/www/html/db.sql
fi

mysql -e "USE ctf;INSERT INTO Flag VALUES('$FLAG');" -uroot -proot

export FLAG=not_flag
FLAG=not_flag

rm -f /flag.sh

chown -R root:root /var/www/html/
chmod -R 755 /var/www/html/
