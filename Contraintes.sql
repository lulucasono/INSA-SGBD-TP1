--Creation de contrainte de clé étrangère
--ALTER SESSION SET CURRENT_SCHEMA = MAFERNANDES;

alter table CITY
drop CONSTRAINT fk_CITY_PROVINCE;

alter table CITY
add CONSTRAINT fk_CITY_PROVINCE
FOREIGN KEY (PROVINCE, COUNTRY) references PROVINCE(NAME,COUNTRY)
ON DELETE SET NULL ;

alter table COUNTRY
drop CONSTRAINT fk_COUNTRY_CITY;

alter table COUNTRY
ADD CONSTRAINT fk_COUNTRY_CITY
FOREIGN KEY (CODE, CAPITAL, PROVINCE) REFERENCES CITY(COUNTRY,NAME,PROVINCE)
ON DELETE SET NULL ;

ALTER TABLE PROVINCE
drop CONSTRAINT fk_PROVINCE_COUNTRY;

ALTER TABLE PROVINCE
ADD CONSTRAINT fk_PROVINCE_COUNTRY
FOREIGN KEY (COUNTRY) REFERENCES COUNTRY(CODE)
ON DELETE SET NULL ;