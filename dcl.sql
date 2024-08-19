CREATE DATABASE SMILEAGE;

CREATE USER 'smileage'@'root' IDENTIFIED BY '1234';

GRANT ALL PRIVILEGES ON smileage.* TO 'smileage'@'localhost';

FLUSH PRIVILEGES;

SHOW GRANTS FOR 'smileage'@'root';