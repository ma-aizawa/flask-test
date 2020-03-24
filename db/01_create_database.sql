DROP DATABASE IF EXISTS flask_test;
CREATE DATABASE flask_test CHARACTER SET utf8;
DROP USER IF EXISTS flask_user;
CREATE USER flask_user IDENTIFIED BY 'flask_password';
GRANT ALL ON flask_test.* TO flask_user;
