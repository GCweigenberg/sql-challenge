
-- CREATE new table
CREATE TABLE departments (
		dept_number VARCHAR(10) PRIMARY KEY,
		dept_name VARCHAR(30)		
);

CREATE TABLE titles (
	title_id VARCHAR(20) PRIMARY KEY,
	title VARCHAR(20) NOT NULL 
);

CREATE TABLE employees (
	emp_number INT PRIMARY KEY,
	title_id VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (title_id) REFERENCES titles(title_id)
);



CREATE TABLE dept_employee (
	emp_number INT NOT NULL,
	dept_number VARCHAR(10) NOT NULL,
	PRIMARY KEY (emp_number, dept_number),
	FOREIGN KEY (emp_number) REFERENCES employees(emp_number),
	FOREIGN KEY (dept_number) REFERENCES departments(dept_number)
);



CREATE TABLE dept_manager (
	dept_number VARCHAR(10) NOT NULL,
	emp_number INT NOT NULL,
	PRIMARY KEY (dept_number, emp_number),
	FOREIGN KEY (dept_number) REFERENCES departments(dept_number),
	FOREIGN KEY (emp_number) REFERENCES employees(emp_number)
);



CREATE TABLE salaries (
	emp_number INT PRIMARY KEY,
	salary INT NOT NULL,
	FOREIGN KEY(emp_number) REFERENCES employees(emp_number)
);