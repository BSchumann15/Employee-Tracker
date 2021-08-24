DROP DATABASE IF EXISTS employees_db
CREATE DATABASE employees_db

USE employees_db

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    NAME VARCHAR(45) NULL,
    PRIMARY KEY (id)
);

