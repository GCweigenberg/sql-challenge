CREATE TABLE departments (
	dept_number VARCHAR(10),
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_number)
);

CREATE TABLE employees (
	emp_number INT NOT NULL,
	title_id VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_number)
);



CREATE TABLE dept_employee (
	emp_number INT NOT NULL,
	dept_number VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_number) REFERENCES employees(emp_number),
	FOREIGN KEY (dept_number) REFERENCES departments(dept_number)
);

CREATE TABLE dept_manager (
	dept_number VARCHAR(10)
	emp_number INT,
	FOREIGN KEY (dept_number) REFERENCES departments(dept_number),
	FOREIGN KEY (emp_number) REFERENCES employees(emp_number)
);


CREATE TABLE salaries (
	emp_number BIGINT NOT NULL,
	salary BIGINT NOT NULL,
	FOREIGN KEY(emp_number) REFERENCES employees(emp_number)
);


CREATE TABLE titles (
	title_id VARCHAR(20) NOT NULL,
	title VARCHAR(20) NOT NULL 
);
	
	

	