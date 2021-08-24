DROP DATABASE IF EXISTS employees_db
CREATE DATABASE employees_db

USE employees_db

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(45) NULL,
    lastName VARCHAR(45) NULL,
    role_id INT NULL,
    manager_id INT NULL,
    PRIMARY KEY (id),
);

CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(45) NULL,
    salary DECIMAL(10.3) NULL,
    department_id INT NULL,
    PRIMARY KEY (id),
);
