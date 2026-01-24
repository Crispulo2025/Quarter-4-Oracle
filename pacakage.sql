-- Package Specification (Interface)
CREATE OR REPLACE PACKAGE emp_pkg IS
   PROCEDURE add_employee(p_id IN NUMBER, p_name IN VARCHAR2, p_salary IN NUMBER);
   PROCEDURE update_salary(p_id IN NUMBER, p_amount IN NUMBER);
   FUNCTION get_employee_salary(p_id IN NUMBER) RETURN NUMBER;
   FUNCTION get_employee_name(p_id IN NUMBER) RETURN VARCHAR2;
END emp_pkg;
/

-- Package Body (Implementation)
CREATE OR REPLACE PACKAGE BODY emp_pkg IS

   PROCEDURE add_employee(p_id IN NUMBER, p_name IN VARCHAR2, p_salary IN NUMBER) IS
   BEGIN
      INSERT INTO employees(emp_id, emp_name, salary)
      VALUES(p_id, p_name, p_salary);
   END add_employee;

   PROCEDURE update_salary(p_id IN NUMBER, p_amount IN NUMBER) IS
   BEGIN
      UPDATE employees SET salary = salary + p_amount WHERE emp_id = p_id;
   END update_salary;

   FUNCTION get_employee_salary(p_id IN NUMBER) RETURN NUMBER IS
      v_salary NUMBER;
   BEGIN
      SELECT salary INTO v_salary FROM employees WHERE emp_id = p_id;
      RETURN v_salary;
   END get_employee_salary;

   FUNCTION get_employee_name(p_id IN NUMBER) RETURN VARCHAR2 IS
      v_name VARCHAR2(100);
   BEGIN
      SELECT emp_name INTO v_name FROM employees WHERE emp_id = p_id;
      RETURN v_name;
   END get_employee_name;

END emp_pkg;
/
