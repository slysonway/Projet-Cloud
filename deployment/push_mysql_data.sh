#!/bin/bash

database_name=$(terraform output database_name)

database_admin_login=$(terraform output database_admin_login)
database_admin_password=$(terraform output database_admin_password)
mysql_server_name=$(terraform output mysql_server_name)

database_admin_login="${database_admin_login}@${mysql_server_name}"

mysql -h "${mysql_server_name}.mysql.database.azure.com"\
        -u $database_admin_login\
         --password=$database_admin_password $database_name < database.sql
