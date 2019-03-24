# README
___
## Instalation steps:


On the terminal:  
### 1. Clone the repository:
` git clone https://github.com/Erev14/RailsLibrary.git `
### 2. Create the database:
  - On MySQL:  
    1. Uncomment gem 'mysql2' on the Gemfile
    1. Create database for **development**  
           create database library_development;
           grant all privileges on library_development.*
           FLUSH PRIVILEGES;
    2. Create database for **production**
           create database library_production;
           grant all privileges on library_production.*
           FLUSH PRIVILEGES;
    3. Create database for **test**
           create database library_test;
           grant all privileges on library_test.*
           FLUSH PRIVILEGES;

  - On PostgerSQL:  
    1. Uncomment gem 'pg'
    2. ` sudo -u postgres createuser rubyuser -s `  
    If you want to create a password for the new user, then use the following command.
    ` sudo -u postgres psql `  
    1. Create database for **development**
           CREATE DATABASE library_development OWNER rubyuser;
    2. Create database for **production**
           CREATE DATABASE library_development OWNER rubyuser;
    3. Create database for **test**
           CREATE DATABASE library_development OWNER rubyuser;

  - On


### 3. Make migrations:
  - migrate all:
        export RAILS_ENV = production
        rake db:migrate
        export RAILS_ENV = test
        rake db:migrate
        export RAILS_ENV = development
        rake db:migrate

  - migrate to production:  
        export RAILS_ENV = production
        rake db:migrate

  - migrate to development:  
        export RAILS_ENV = development
        rake db:migrate
  - migrate to test:
        export RAILS_ENV = test
        rake db:migrate
 **NOTE** − In Windows, use "set RAILS_ENV = production" instead of export command.
