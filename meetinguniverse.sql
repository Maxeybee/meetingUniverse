DROP DATABASE IF EXISTS meetinguniverse;
CREATE DATABASE meetinguniverse;
USE  meetinguniverse;


DROP TABLE IF EXISTS user;
CREATE TABLE IF NOT EXISTS user (
  id_user int(11) NOT NULL AUTO_INCREMENT,
  id_category int(11) NOT NULL,
  first_name varchar(25) NOT NULL,
  last_name varchar(50) NOT NULL,
  birth_date date NOT NULL,
  phone_number int(8) NOT NULL,
  email varchar(50) NOT NULL,
  PRIMARY KEY (id_user),
  CONSTRAINT fk_id_user_category FOREIGN KEY (id_category) REFERENCES user_category(id_user_category)
);

DROP TABLE IF EXISTS user_category;
CREATE TABLE IF NOT EXISTS user_category (
  id_user_category int(11) NOT NULL AUTO_INCREMENT,
  category_name varchar(25) NOT NULL,
  category_description varchar(50) NOT NULL,
  PRIMARY KEY (id_user_category)
);

DROP TABLE IF EXISTS project;
CREATE TABLE IF NOT EXISTS project (
  id_project int(11) NOT NULL AUTO_INCREMENT,
  id_owner int(11) NOT NULL,
  project_title varchar(25) NOT NULL,
  project_description longtext NOT NULL,
  PRIMARY KEY (id_project),
  CONSTRAINT fk_id_user FOREIGN KEY (id_owner) REFERENCES user(id_user)
);

DROP TABLE IF EXISTS comment;
CREATE TABLE IF NOT EXISTS comment (
  id_comment int(11) NOT NULL AUTO_INCREMENT,
  id_user_comment int(11) NOT NULL,
  comment_title varchar(25) NOT NULL,
  comment_description longtext NOT NULL,
  PRIMARY KEY (id_comment),
  CONSTRAINT fk_id_comment FOREIGN KEY (id_comment) REFERENCES user(id_user)
);
