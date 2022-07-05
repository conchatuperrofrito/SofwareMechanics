create database db_mecanica;
use db_mecanica;
create table tuser_service(
name_user varchar(50)primary key not null,

dni_user varchar(8)not null,
phone_user varchar(9)not null,
adress_user varchar(100)not null,
email_user varchar(50)not null,
password_user varchar(30)not null,
specialty_user varchar(30)not null,
description_user varchar(100)not null,
recorded_by_user varchar(50)not null,/*superimpose*/
año_admission_user int not null,/*one box*/
mes_admission_user int not null,
dia_admission_user int not null,
status_user varchar(5)not null,/*bar*/
level_user varchar(20)not null/*bar*/

);
create table tclient(
name_client varchar(50)primary key not null,
name_user varchar(50)not null,

dni_client varchar(8)not null, 
phone_client varchar(9)not null,
adress_client  varchar(100)not null,
email_client varchar(50)not null,
status_payment_client  varchar(20)not null,
status_delivery_client varchar(20)not null,
description_client varchar(100)not null,
año_admission_client int not null,
mes_admission_client int not null,
dia_admission_client int not null,
FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);
create table tabla_supplier(
codigo_supplier int auto_increment primary key,

name_supplier varchar(50),
ruc_supplier varchar(10),
adress_supplier varchar(10),
description_supplier varchar(10),
año_admission_client int not null,
mes_admission_client int not null,
dia_admission_client int not null,
FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);
create table tspare_buy(
codigo__spare_buy int auto_increment primary key,
codigo_supplier int,
name_user varchar(50),

name_spare_buy varchar(50)not null,
type_spare_buy varchar(30)not null,
brand_spare_buy varchar(30)not null,
model_spare_buy varchar(30)not null,
serie_spare_buy varchar(30)not null,
cost_spare_buy  float(4,3) not null,
cost_spare_sell  float(4,3) not null,
detail_spare_buy varchar(50)not null,
nº_spare_buy varchar(30)not null,
año_admission_spare_buy int not null,
mes_admission_spare_buy int not null,
dia_admission_spare_buy int not null,
FOREIGN KEY (PersonID) REFERENCES Persons(PersonID),
FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);
create table voucher(
name_client varchar(50),

dni_client varchar(8),
phone_client varchar(9)not null,
año_admission_spare int,
mes_admission_spare int,
dia_admission_spare int,
cost_sell_spare_sell float(4,3),
FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

