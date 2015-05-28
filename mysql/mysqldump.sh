#! /bin/bash

TIMESTAMP=$(date +"%F")
BACKUP_DIR="/backup/$TIMESTAMP"
MYSQL_USER="<user>"
MYSQL=/usr/bin/mysql
MYSQL_PASSWORD="<password>"
MYSQLDUMP=/usr/bin/mysqldump

mkdir -p "$BACKUP_DIR/mysql"

# dump single database
#db="<database>"
#$MYSQLDUMP --user=$MYSQL_USER -p$MYSQL_PASSWORD $db --routines | gzip > "$BACKUP_DIR/mysql/$db.gz"

# dump all databases
databases=`$MYSQL --user=$MYSQL_USER -p$MYSQL_PASSWORD -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema|performance_schema)"`

for db in $databases; do
  $MYSQLDUMP --force --opt --user=$MYSQL_USER -p$MYSQL_PASSWORD --databases $db --routines | gzip > "$BACKUP_DIR/mysql/$db.gz"
done
