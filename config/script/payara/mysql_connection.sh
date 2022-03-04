#!/bin/bash
echo -e "AS_ADMIN_PASSWORD=admin" > password
asadmin -u admin --passwordfile password add-library mysql-connector-java-8.0.28.jar; \
asadmin -u admin --passwordfile password create-jdbc-connection-pool --datasourceclassname com.mysql.cj.jdbc.MysqlDataSource --restype javax.sql.DataSource --property user=root:password=password:DatabaseName=hostelDB:ServerName=localhost:port=32769 mysql-pool; \
