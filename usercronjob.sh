#!/bin/bash

MD5_SUM="$(cat /etc/passwd | awk -F ":" '{print $1 ":" $6}' | md5sum | cut -d" " -f1)"

if [ -e /var/log/current_users ]
then
    OLD_MD5="$(cat /var/log/current_users)"
    if [ ! $OLD_MD5 = $MD5_SUM ]
    then
        echo "$(date +'%Y-%m-%d %T') changes occured" >> /var/log/user_changes
	echo -e $MD5_SUM > /var/log/current_users
	echo $MD5_SUM
	echo $OLD_MD5
    fi
else
    echo -e $MD5_SUM > /var/log/current_users
fi

