
DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT, 
    name VARCHAR(30) NOT NULL, 
    PRIMARY KEY(id)

);
INSERT INTO department (name) VALUES ("Human Resources");
INSERT INTO department (name) VALUES ("Marketing");
INSERT INTO department (name) VALUES ("Information Technology");
INSERT INTO department (name) VALUES ("Corporate");
INSERT INTO department (name) VALUES ("Accounting");

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL, 
    salary DECIMAL NOT NULL, 
    department_id INT NOT NULL, 
    PRIMARY KEY(id),
    FOREIGN KEY(department_id)
    REFERENCES department(id)
);
INSERT INTO role (title, salary, department_id) VALUES ("Analyst", 70000, 3);
INSERT INTO role (title, salary, department_id) VALUES ("Communications Associate", 50000, 2);
INSERT INTO role (title, salary, department_id) VALUES ("Social Media Manager", 50000, 2);
INSERT INTO role (title, salary, department_id) VALUES ("Director", 100000, 1);
INSERT INTO role (title, salary, department_id) VALUES ("VP", 10000000, 4);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT, 
    first_name VARCHAR(30) NOT NULL, 
    last_name VARCHAR(30) NOT NULL, 
    role_id INT NOT NULL, 
    manager_id INT,
    PRIMARY KEY(id),

    FOREIGN KEY(role_id)
    REFERENCES role(id),

    FOREIGN KEY (manager_id)
    REFERENCES employee(id),

);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("David", "Jester", 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Abby", "Whiteman", 1, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Katie", "Pieto", 3, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Rachael", "Squirm", 4, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Lizzie", "Halep", 5, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Karen", "Pelo", 3, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Ramsing", "Samelo", 4, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Lama", "Harvinder", 5, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Kashmira", "Parsad", 3, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Rajram", "Sajwan", 4, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ("Lilawat", "Hamesha", 5, 1);
