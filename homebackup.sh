#!/bin/bash
#This script is used to back up the user's home directory

cd /home

tar -cf /var/tmp/homebackup.tar $USER

rm /var/tmp/homebackup.tar.gz > /dev/null

gzip /var/tmp/homebackup.tar 

scp /var/tmp/homebackup.tar.gz administator@10.1.10.76:-
