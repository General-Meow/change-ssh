#!/bin/bash

# script downloads html with curl into a varible, scans it for a string and emails depending on the outcome
# requires curl and mailutils = sudo apt-get install curl/mailutils
# can be used in conjunction with crontab -e to execute at regular intervals

string=`curl https://play.google.com/store/devices/details?id=nexus_4_16gb`;

if [[ $string =~ .*'Notify me'.* ]] 
then
   echo "its currently in notify state" paul@neoworks.com
   mail -s "NOT STOCK" paul@neoworks.com < /dev/null paul@neoworks.com
else
   echo "its probably in stock!";
   mail -s "MIGHT BE IN STOCK" paul@neoworks.com < /dev/null paul@neoworks.com
fi