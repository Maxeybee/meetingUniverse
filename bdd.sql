drop database if exists testt;
create database testt;
use testt;

create table user (
 id int(10) NOT NULL  AUTO_INCREMENT,
 nom varchar(25),
 prenom varchar(25),
 datanaissa date, 
 tel int(8),
 email varchar(50),
 primary key(id)
);
