CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL UNIQUE,
    location VARCHAR(100) NOT NULL
);

INSERT INTO Department (dept_id, dept_name, location)
VALUES
(1, 'IT', 'Mumbai'),
(2, 'Finance', 'Delhi'),
(3, 'HR', 'Bangalore');

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gender CHAR(1) CHECK (gender IN ('M','F','O')),
    dob DATE NOT NULL,
    hire_date DATE NOT NULL,
    dept_id INT,
    salary DECIMAL(10,2) CHECK (salary > 0),
    email VARCHAR(100) UNIQUE NOT NULL,
    CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

INSERT INTO Employee (emp_id, name, gender, dob, hire_date, dept_id, salary, email)
VALUES
(1, 'Amit Sharma', 'M', '1992-03-15', '2021-06-01', 1, 65000, 'amit.sharma@email.com'),
(2, 'Anita Rao', 'F', '1990-11-22', '2019-02-15', 2, 80000, 'anita.rao@email.com'),
(3, 'Rahul Verma', 'M', '1988-07-10', '2020-09-10', 1, 55000, 'rahul.verma@email.com');



CREATE TABLE Project (
    proj_id INT PRIMARY KEY,
    proj_name VARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    budget DECIMAL(12,2) CHECK (budget > 0),
    dept_id INT,
    CONSTRAINT fk_proj_dept FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

INSERT INTO Project (proj_id, proj_name, start_date, end_date, budget, dept_id)
VALUES
(1, 'Project Alpha', '2023-01-01', '2023-06-30', 500000, 1),
(2, 'Project Beta', '2023-03-01', '2023-12-31', 750000, 2),
(3, 'Project Gamma', '2023-05-01', '2024-04-30', 300000, 1);


CREATE TABLE Assignment (
    assign_id INT PRIMARY KEY,
    emp_id INT,
    proj_id INT,
    role VARCHAR(50) NOT NULL,
    hours_worked INT CHECK (hours_worked >= 0),
    CONSTRAINT fk_assign_emp FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_assign_proj FOREIGN KEY (proj_id) REFERENCES Project(proj_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


INSERT INTO Assignment (assign_id, emp_id, proj_id, role, hours_worked)
VALUES
(1, 1, 1, 'Developer', 120),
(2, 2, 2, 'Analyst', 150),
(3, 1, 3, 'Lead', 100),
(4, 3, 1, 'Tester', 80);

CREATE TABLE Salary_Audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    old_salary DECIMAL(10,2),
    new_salary DECIMAL(10,2),
    change_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


DELIMITER //
CREATE FUNCTION get_bonus(salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
   RETURN salary * 0.10;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER trg_salary_update
BEFORE UPDATE ON Employee
FOR EACH ROW
BEGIN
   IF OLD.salary <> NEW.salary THEN
      INSERT INTO Salary_Audit(emp_id, old_salary, new_salary)
      VALUES (OLD.emp_id, OLD.salary, NEW.salary);
   END IF;
END //
DELIMITER ;

UPDATE Employee SET salary = salary * 1.10;
-- 5. Remove employees not assigned
DELETE FROM Employee WHERE emp_id NOT IN (SELECT emp_id FROM Assignment);
-- 6. Salary between 50k and 80k
SELECT * FROM Employee WHERE salary BETWEEN 50000 AND 80000;
-- 7. Names starting with 'A'
SELECT name FROM Employee WHERE name LIKE 'A%';
-- 8. Hired after 2020-01-01
SELECT * FROM Employee WHERE hire_date > '2020-01-01';
-- 9. Unique job roles
SELECT DISTINCT role FROM Assignment;
-- 10. Count employees per department
SELECT dept_id, COUNT(*) AS emp_count FROM Employee GROUP BY dept_id;
-- 11. Employees with no department
SELECT * FROM Employee WHERE dept_id IS NULL;
-- 12. Sort by salary descending
SELECT * FROM Employee ORDER BY salary DESC;
-- 13. Top 3 highest paid
SELECT * FROM Employee ORDER BY salary DESC LIMIT 3;
-- 14. Employees not in IT
SELECT e.* FROM Employee e JOIN Department d ON e.dept_id = d.dept_id WHERE d.dept_name <> 'IT';
-- 15. Salary <60k and role = Developer
SELECT e.* FROM Employee e JOIN Assignment a ON e.emp_id = a.emp_id WHERE e.salary<60000 AND a.role='Developer';
-- 16. Employees earning above avg salary
SELECT * FROM Employee WHERE salary > (SELECT AVG(salary) FROM Employee);
-- 17. Born in March
SELECT * FROM Employee WHERE MONTH(dob) = 3;
-- 18. Total salary per department
SELECT dept_id, SUM(salary) AS total_salary FROM Employee GROUP BY dept_id;
-- 19. Salary classification
SELECT name, salary,
CASE
   WHEN salary < 50000 THEN 'Low'
   WHEN salary BETWEEN 50000 AND 80000 THEN 'Medium'
   ELSE 'High'
END AS salary_band
FROM Employee;
-- 20. Verify Finance dept
SELECT * FROM Department WHERE dept_name='Finance';

