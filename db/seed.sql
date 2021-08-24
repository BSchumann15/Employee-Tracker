USE employees_db;

INSERT INTO department (name)
VALUES ("sales");
INSERT INTO department (name)
VALUES ("Engineering")
INSERT INTO department (name)
VALUES ("legal");
INSERT INTO department (name)
VALUES ("finance");

INSERT INTO employee (firstName, lastName, role_id, manager_id)
VALUES ("Bruce", "Wayne",1 ,3);
INSERT INTO employee (firstName, lastName, role_id, manager_id)
VALUES ("Barry", "Allen",2 ,1);
INSERT INTO employee (firstName, lastName, role_id, manager_id)
VALUES ("Clark", "Kent",3 ,NULL);
INSERT INTO employee (firstName, lastName, role_id, manager_id)
VALUES ("Diana", "Prince",4 ,3);
INSERT INTO employee (firstName, lastName, role_id, manager_id)
VALUES ("Arthur", "Curry",5 ,NULL);
INSERT INTO employee (firstName, lastName, role_id, manager_id)
VALUES ("Kendra", "Saunders",2 ,NULL);
INSERT INTO employee (firstName, lastName, role_id, manager_id)
VALUES ("Dinah", "Drake",4 ,7);
INSERT INTO employee (firstName, lastName, role_id, manager_id)
VALUES ("Hal", "Jordan",1 ,2);

INSERT INTO roles (title, salary, department_id)
VALUES ("Sales Lead", 100000, 1);
INSERT INTO roles (title, salary, department_id)
VALUES ("Lead Engineer", 150000, 2);
INSERT INTO roles (title, salary, department_id)
VALUES ("Software Engineer", 120000, 2);
INSERT INTO roles (title, salary, department_id)
VALUES ("Accountant", 125000, 3);
INSERT INTO roles (title, salary, department_id)
VALUES ("Legal Team Lead", 250000, 4);