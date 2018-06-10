CREATE TABLE customers(
	customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
PRIMARY KEY(customer_id)
);

ALTER TABLE customers
ADD COLUMN gender ENUM('M', 'F') AFTER last_name;

INSERT INTO customers(first_name, last_name,gender,
email_address,number_of_complaints)

VALUES('John','Mackinley','M','john.mckinley@365careers.com',0);

SELECT * FROM customers;

CREATE TABLE companies(
	company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT 'X',
    headquarters_phone_number int(12),
PRIMARY KEY(company_id),
UNIQUE KEY(headquarters_phone_number)
);

drop table companies;

create table companies(
	company_id int auto_increment,
	headquarters_phone_number VARCHAR(255),
    company_name varchar(255) not null,
primary key(company_id)
);

alter table companies
modify company_name varchar(255) null;

alter table companies
change column company_name company_name varchar(255) not null;

insert into companies(headquarters_phone_number)
values ('+1 (202) 555-0196');