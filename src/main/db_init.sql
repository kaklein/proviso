DROP USER IF EXISTS 'proviso_user'@'localhost';
CREATE USER 'proviso_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
GRANT ALL PRIVILEGES ON proviso.* TO'proviso_user'@'localhost';



DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  id int NOT NULL AUTO_INCREMENT,
  customer_id int,
  checkin varchar(45),
  checkout varchar(45),
  room varchar(45),
  wifi varchar(45),
  breakfast varchar(45),
  parking varchar(45),
  guests int,
  price float,
  points_earned int,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  email varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  points int DEFAULT NULL,
  PRIMARY KEY (id)
);