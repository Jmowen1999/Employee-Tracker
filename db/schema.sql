DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

DROP TABLE IF EXISTS department;
DROP TABLE IF EXISTS position;
DROP TABLE IF EXISTS employee;

CREATE TABLE department (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    department VARCHAR(45) NOT NULL
);

CREATE TABLE position (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(45) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INTEGER,
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE SET NULL
);

CREATE TABLE employee (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    position_id INTEGER,
    manager_id INTEGER,
    CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE SET NULL,
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);