
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
 

Poland,38539201,Eastern Europe,
Ukraine,37860221,Eastern Europe
Romania,19015088,Eastern Europe
Netherlands,18228742,Western Europe
Belgium,11738763,Western Europe
Czech Republic (Czechia),10735859,Eastern Europe
Sweden,10606999,Northern Europe
Portugal,10425292,Southern Europe
Greece,10047817,Southern Europe
Hungary,9676135,Eastern Europe
Austria,9120813,Western Europe
Belarus,9056,696,Eastern Europe
Switzerland,8921981,Western Europe
Bulgaria,6757689,Eastern Europe
Serbia,6736216,Southern Europe
Denmark,5977412,Northern Europe
Finland,5617310,Northern Europe
Norway,5576660,Northern Europe
Slovakia,5506760,Eastern Europe
Ireland,5255017,Northern Europe
Croatia,3875325,Southern Europe
Bosnia and Herzegovina,3164253,Southern Europe
Moldova,3034961,Eastern Europe
Lithuania,2859110,Northern Europe
Albania,2791765,Southern Europe
Slovenia,2118697,Southern Europe
Latvia,1871871,Northern Europe
North Macedonia,1823009,Southern Europe
Estonia,1360546,Northern Europe
Luxembourg,673036,Western Europe
Montenegro,638479,Southern Europe
Malta,539607,Southern Europe
Iceland,393396,Northern Europe
Andorra,81938Southern Europe
Liechtenstein,39870,Western Europe
Monaco,38631Western Europe
San Marino,33581Southern Europe
Holy See,496,Southern Europe
Isle of Man,84160,U.K.
Gibraltar,39329,U.K.
