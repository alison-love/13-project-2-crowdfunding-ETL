### Crowdfunding ETL Project

## Project Overview

The Crowdfunding ETL project is a comprehensive exercise designed to practice and demonstrate skills in building an ETL (Extract, Transform, Load) pipeline using Python, Pandas, and PostgreSQL. The project involved extracting data from Excel files, transforming it via Python scripting, and loading it into a PostgreSQL database. Key tasks included data extraction and transformation, CSV file generation, database schema design, and data importation.

## Objectives

- Extract and transform data from provided Excel files (crowdfunding.xlsx and contacts.xlsx).
- Create four CSV files: category.csv, subcategory.csv, campaign.csv, and contacts.csv.
- Design an Entity-Relationship Diagram (ERD) and database schema for the crowdfunding dataset.
- Create and populate a PostgreSQL database named crowdfunding_db with the data from the CSV files.
  
## Repository Structure

- ETL_Mini_Project.ipynb: Jupyter notebook containing all Python scripts used for data extraction and transformation.
- Resources/: Folder containing the original crowdfunding.xlsx and contacts.xlsx files.
- csv-files/: Folder containing the generated CSV files (category.csv, subcategory.csv, campaign.csv, and contacts.csv).
- crowdfunding_db_schema.sql: SQL file containing the schema for the PostgreSQL database.
- ERD.png: a visual diagram of the entity relationships between tables
  
## Objectives:

Data Extraction and Transformation
- Used Python and Pandas for data extraction from Excel files and data transformation.
- Created dataframes with unique identifiers (category_id, subcategory_id) and respective titles.
- Developed a dataframe with detailed campaign information, ensuring proper data type conversions for fields like goal, pledged, and date columns.
- Extracted contact information, split names into first and last names, and formatted the data into a structured dataframe.
 
Database and Table Creation
- Designed an ERD to visualize table relationships and identify primary and foreign keys.
- Wrote SQL statements to create a PostgreSQL database (crowdfunding_db) and tables as per the ERD.
- Added foreign key constraints to link tables appropriately.
- Imported data from CSV files into the respective tables in the database.
  
Data Verification
- Executed SELECT statements for each table to verify the successful creation and data import.

## Execution Guide

- Clone the repository and navigate to the project directory.
- Run the Jupyter notebook (ETL_Mini_Project.ipynb) to perform the ETL process.
- Execute the SQL statements in crowdfunding_db_schema.sql to create the database and tables.
- Use the COPY command in PostgreSQL to import data from the CSV files into the database.
- Verify data integrity through SQL queries.

