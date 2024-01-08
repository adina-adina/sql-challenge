-- Create the 'departments' table
CREATE TABLE departments
(
 dept_no VARCHAR(50) NOT NULL PRIMARY KEY,
 dept_name VARCHAR(50) NOT NULL
);

-- Create the 'employees' table
CREATE TABLE employees
(
 emp_no INT NOT NULL PRIMARY KEY,
 emp_title_id VARCHAR(50) NOT NULL,
 birth_date DATE NOT NULL,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 sex CHAR(1) NOT NULL,
 hire_date DATE NOT NULL
);

-- Create the 'titles' table
CREATE TABLE titles
(
 title_id VARCHAR(50) NOT NULL PRIMARY KEY,
 title VARCHAR(50) NOT NULL
);

-- Create the 'salaries' table
CREATE TABLE salaries
(
 emp_no INT NOT NULL PRIMARY KEY,
 salary INT NOT NULL,
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create the 'dept_emp' table
CREATE TABLE dept_emp
(
 emp_no INT NOT NULL,
 dept_no VARCHAR(50) NOT NULL,
 PRIMARY KEY (emp_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create the 'dept_manager' table
CREATE TABLE dept_manager
(
 dept_no VARCHAR(50) NOT NULL,
 emp_no INT NOT NULL,
 PRIMARY KEY (dept_no),
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create the 'dept_emp' table
CREATE TABLE dept_emp
(
 emp_no INT NOT NULL,
 dept_no VARCHAR(50) NOT NULL,
 PRIMARY KEY (emp_no, dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create the 'dept_manager' table
CREATE TABLE dept_manager
(
 dept_no VARCHAR(50) NOT NULL,
 emp_no INT NOT NULL,
 PRIMARY KEY (dept_no, emp_no),
 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

