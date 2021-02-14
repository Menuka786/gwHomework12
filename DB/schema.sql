DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;
CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  manager_id INT,
  PRIMARY KEY (id),
    -- FOREIGN KEY(role_id)
    -- REFERENCES role(id),
    FOREIGN KEY(manager_id)
    REFERENCES employee(id)

);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Reena", "Samuel", 1, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Fatima", "Douglas", 2, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Tulsi", "Singh", 4, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Matifa", "Defenty", 3, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Bina", "Benni", 5, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Sema", "Gaur", 2, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Garima", "Rawat", 3, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Tony", "Stark", 1, 1 );
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Robereta", "Mishra", 1, 1);


CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT,
  PRIMARY KEY (id)
  -- FOREIGN KEY(department_id)
  -- REFERENCES department(id)
);
insert into role(title, salary, department_id) values('Manager', 100000, 1);
insert into role(title, salary, department_id) values('Engineer', 90000, 2);
insert into role(title, salary, department_id) values('Accountant', 850000, 3);
insert into role(title, salary, department_id) values('HumanResources', 50000, 4);
insert into role(title, salary, department_id) values('Administration', 45000, 5);

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);
insert into department(name)
values ('Management'),
       ('Engineering'),
       ('Accounting'),
       ('Marketing'),
       ('Human Resources');
