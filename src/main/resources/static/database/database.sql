CREATE TABLE user(
  user_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) NOT NULL ,
  password VARCHAR(255) NOT NULL ,
  name VARCHAR(255) NOT NULL ,
  last_name VARCHAR(255) NOT NULL ,
  active INT(11) DEFAULT NULL
);

CREATE TABLE role(
  role_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  role VARCHAR(255) NOT NULL
);

CREATE TABLE user_role(
  user_id INT(11) NOT NULL ,
  role_id INT(11) NOT NULL ,
  PRIMARY KEY (user_id, role_id),
  FOREIGN KEY (user_id) REFERENCES user(user_id),
  FOREIGN KEY (role_id) REFERENCES role(role_id)
);

INSERT INTO role VALUES (1,'ADMIN');