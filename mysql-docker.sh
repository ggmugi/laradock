
#echo 'create database ioplatform' | docker exec -i ioplatform_mysql_1 /usr/bin/mysql -u root --password=password
# Backup
#docker exec CONTAINER /usr/bin/mysqldump -u root --password=root DATABASE > backup.sql

# Restore

cat ioplatform.sql | docker exec -i ioplatform_mysql_1 /usr/bin/mysql -u root --password=password ioplatform

