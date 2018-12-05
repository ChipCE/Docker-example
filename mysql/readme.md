docker logs mysql-dev 2>&1 | grep GENERATED
docker exec -it mysql-dev mysql -u root -p
ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';



CREATE USER 'test'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'test'@'localhost' WITH GRANT OPTION;
CREATE USER 'test'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'test'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

ALTER USER 'test'@'%' IDENTIFIED WITH mysql_native_password BY 'password';