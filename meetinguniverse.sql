DROP TABLE IF EXISTS project;
CREATE TABLE IF NOT EXISTS project (
  id_project int(11) NOT NULL AUTO_INCREMENT,
  id_owner int(11) NOT NULL,
  project_title varchar(25) NOT NULL,
  project_description text NOT NULL,
  PRIMARY KEY (id_project),
  CONSTRAINT fk_id_user FOREIGN KEY (id_owner) REFERENCES user(id_user)
);

DROP TABLE IF EXISTS user;
CREATE TABLE IF NOT EXISTS user (
  id_user int(11) NOT NULL AUTO_INCREMENT,
  first_name varchar(25) NOT NULL,
  last_name varchar(50) NOT NULL,
  birth_date date NOT NULL,
  phone_number int(8) NOT NULL,
  email varchar(50) NOT NULL,
  PRIMARY KEY (id_user)
);
