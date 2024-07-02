# E-commerce SQL Database Project

## Overview

This project contains SQL scripts and related documentation for setting up and managing an e-commerce database using MySQL and PopSQL.

## Structure

- **`sql/ddl/`**: DDL scripts for creating and altering tables.
- **`sql/dml/`**: DML scripts for inserting data.
- **`sql/queries/`**: Scripts for complex queries and operations.
- **`sql/triggers/`**: Scripts for creating triggers.
- **`docs/`**: Documentation and diagrams.
- **`scripts/`**: Shell scripts for database setup and management.
- **`backups/`**: Database backup files.

## Tools

- **MySQL**: The database management system used for this project.
- **PopSQL**: A SQL editor and collaboration tool.

## Setup

### MySQL

1. [Download and install MySQL](https://dev.mysql.com/downloads/installer/).

2. Start the MySQL server.

3. Create a new database:

   ```sql
   CREATE DATABASE ecommerce_db;
   ```

4. Clone the repository:

   `git clone https://github.com/your-username/e-commerce-sql-database-project.git
   cd e-commerce-sql-database-project` 

### PopSQL

1. [Download and install PopSQL](https://popsql.com/).
2. Connect PopSQL to your MySQL database:
   - Open PopSQL and create a new connection.
   - Enter your MySQL server details (host, port, username, password, database name).


## Usage

- **Creating Tables**: Run the scripts in `sql/ddl/` using PopSQL or the MySQL command line.
- **Inserting Data**: Run the scripts in `sql/dml/` using PopSQL or the MySQL command line.
- **Executing Queries**: Use the scripts in `sql/queries/` using PopSQL or the MySQL command line.

### Using PopSQL

1. Open PopSQL and connect to your MySQL database.
2. Open and run the scripts in the `sql/` directory in the following order:
   1. `sql/ddl/create_tables.sql`
   2. `sql/dml/insert_data.sql`
   3. `sql/queries/operations.sql`
   4. `sql/triggers/create_triggers.sql`

## ERDiagram
![ER diagram](https://github.com/hammoda711/e-commerce-order-management-system-db-sql/assets/66457688/aa1757e4-a4f6-4802-a134-6986695bbacd)

