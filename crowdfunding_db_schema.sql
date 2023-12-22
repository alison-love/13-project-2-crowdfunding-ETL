
CREATE DATABASE crowdfunding_db;

DROP TABLE IF EXISTS campaign CASCADE;
DROP TABLE IF EXISTS contacts CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;
        

        

        
CREATE TABLE campaign
(
  cf_id          integer      NOT NULL,
  contact_id     integer      NOT NULL,
  company_name   varchar(50)  NOT NULL,
  description    varchar(300) NOT NULL,
  goal           float        NOT NULL,
  pledged        float        NOT NULL,
  outcome        varchar(10)  NOT NULL,
  backers_count  integer      NOT NULL,
  country        varchar(20)  NOT NULL,
  currency       varchar(3)   NOT NULL,
  launch_date    date         NOT NULL,
  end_date       date         NOT NULL,
  category_id    varchar(30)  NOT NULL,
  subcategory_id varchar(30)  NOT NULL,
  PRIMARY KEY (cf_id)
);

CREATE TABLE category
(
  category_id varchar(30) NOT NULL,
  category    varchar(30) NOT NULL,
  PRIMARY KEY (category_id)
);

CREATE TABLE contacts
(
  contact_id integer     NOT NULL,
  first_name varchar(30) NOT NULL,
  last_name  varchar(30) NOT NULL,
  email      varchar(50) NOT NULL,
  PRIMARY KEY (contact_id)
);

CREATE TABLE subcategory
(
  subcategory_id varchar(30) NOT NULL,
  subcategory    varchar(30) NOT NULL,
  PRIMARY KEY (subcategory_id)
);

ALTER TABLE campaign
  ADD CONSTRAINT FK_category_TO_campaign
    FOREIGN KEY (category_id)
    REFERENCES category (category_id);

ALTER TABLE campaign
  ADD CONSTRAINT FK_subcategory_TO_campaign
    FOREIGN KEY (subcategory_id)
    REFERENCES subcategory (subcategory_id);

ALTER TABLE campaign
  ADD CONSTRAINT FK_contacts_TO_campaign
    FOREIGN KEY (contact_id)
    REFERENCES contacts (contact_id);

        


COPY category
FROM '/Users/alisonlove/Bootcamp/13-project-2-crowdfunding-ETL/csv-files/category.csv'
DELIMITER ','
CSV HEADER;

COPY subcategory
FROM '/Users/alisonlove/Bootcamp/13-project-2-crowdfunding-ETL/csv-files/subcategory.csv'
DELIMITER ','
CSV HEADER;

COPY contacts
FROM '/Users/alisonlove/Bootcamp/13-project-2-crowdfunding-ETL/csv-files/contacts.csv'
DELIMITER ','
CSV HEADER;

COPY campaign
FROM '/Users/alisonlove/Bootcamp/13-project-2-crowdfunding-ETL/csv-files/campaign.csv'
DELIMITER ','
CSV HEADER;



select * from campaign

select * from category

select * from subcategory

select * from contacts

