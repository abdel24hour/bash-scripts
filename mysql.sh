#!/bin/sh

# Dump the xxxxx database each hour.

# Database credentials
USER="xxxx"
PASSWORD="xxxxx"

DATE=`date +%Y.%m.%d.%H.%M.%S`


/usr/bin/mysqldump --opt --single-transaction  -u $USER --password=$PASSWORD xxx > /home/xxxx/xxxx/xxxx.sql.$DATE.sql
/bin/tar zcvf /home/xxxx/xxx/xxx.sql.$DATE.tgz /home/xxx/mysql_hourly_backup/xxxx.sql.$DATE.sql
/bin/rm /home/xxx/mysql_hourly_backup/xxxx.sql.$DATE.sql
/bin/find /home/xxxx/mysql_hourly_backup/*.tgz -mtime +1 -delete
