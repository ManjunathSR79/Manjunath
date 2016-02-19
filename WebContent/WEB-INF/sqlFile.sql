create table  users
(
email varchar(256) primary key,
password varchar(20) not null,
mobile  varchar(20)
);


create table projects
(
project_id int primary key AUTO_INCREMENT , 
project_name varchar(500) not null,
project_description varchar(1000) ,
project_owner varchar(256) not null,
 created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


create table requirements
(
requirement_id int primary key AUTO_INCREMENT , 
project_id int,
requirement varchar(1000) not null,
 created_date  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);



create table customers
(
customer_id int primary key AUTO_INCREMENT,
customer_full_name varchar(50) not null,
customer_mail varchar(50) not null,
customer_phone int not null,
customer_title varchar(256),
customer_company varchar(256),
customer_notes varchar(256),
customer_picture varchar(100),
customer_linkedin varchar(100),
customer_facebook varchar(100),
customer_twitter varchar(100)
);


create table assigncustomer
(
project_id int not null,
customer_id int not null,
primary key(project_id,customer_id)
);

create table ratings
(
rating_id int primary key AUTO_INCREMENT,
 requirement_id int,
rate int not null,
rated_by varchar(256) 
);

