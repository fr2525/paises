
CREATE DATABASE if not exists db_europa default character set utf8 default collate utf8_general_ci;
USE db_europa;
//drop table tb_countries;
CREATE TABLE if not exists tb_countries (
  id     int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name   varchar(150) NOT NULL, 
  population bigint NOT NULL, 
  subregion varchar(100) NOT NULL,
  req_imi varchar(255) NOT NULL,
  benef  varchar(255) NOT NULL,
  life_quality varchar(255) NOT NULL,
  life_cost varchar(255) NOT NULL,
  process  varchar(255) NOT NULL
) default character set utf8 default collate utf8_general_ci;

INSERT INTO tb_countries VALUES
 (default, 'Russia',144820423,'Eastern Europe','Requests for immigration','Benefits','Life quality','Life cost','Process'),
 (default , 'Germany',84552242,'Western Europe','Requests for immigration','Benefits','Life quality','Life cost','Process'),
 (default , 'United Kingdom',69138192,'Nothern Europe','Requests for immigration','Benefits','Life quality','Life cost','Process'),
 (default , 'France',66548530,'Western Europe','Requests for immigration','Benefits','Life quality','Life cost','Process'),
 (default , 'Italy',59342867,'Southern Europe','Requests for immigration','Benefits','Life quality','Life cost','Process'),
 (default , 'Germany',47910526,'Southern Europe','Requests for immigration','Benefits','Life quality','Life cost','Process'),
 (default , 'Spain',144820423,'Eastern Europe','Requests for immigration','Benefits','Life quality','Life cost','Process'),
 (default , 'Poland',38539201,'Eastern Europe','Requests for immigration','Benefits','Life quality','Life cost','Process');
 


