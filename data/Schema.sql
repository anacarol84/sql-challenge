CREATE TABLE titles(
title_id VARCHAR NOT NULL PRIMARY KEY,
title VARCHAR (100) NOT NULL
);

CREATE TABLE employees(
emp_no VARCHAR NOT NULL PRIMARY KEY,
emp_title_id VARCHAR (100) NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex CHAR NOT NULL,
hire_date DATE NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE departments(
dept_no VARCHAR NOT NULL PRIMARY KEY,
dept_name VARCHAR (100) NOT NULL
);

CREATE TABLE salaries(
emp_no VARCHAR NOT NULL,
salary INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
);

CREATE TABLE dept_Manager(
dept_no VARCHAR NOT NULL,
emp_no VARCHAR NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_emp(
emp_no VARCHAR NOT NULL,
dept_no VARCHAR NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);


