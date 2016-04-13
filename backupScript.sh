#!/bin/bash
cd /home/paul
tdy=`date +%Y%m%d`
zip -r Development_backup_$tdy.zip Development 
cp Development_backup_$tdy.zip ./Storage/Development_Backups
mv Development_backup_$tdy.zip ./Archive/Development_Backups

