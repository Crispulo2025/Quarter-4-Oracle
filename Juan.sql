DECLARE
   TYPE student_names_array IS TABLE OF VARCHAR2(50)
      INDEX BY PLS_INTEGER;
   v_students student_names_array;
BEGIN
   -- Example: Assigning values
   v_students(1) := 'Ana Lopez';
   v_students(2) := 'Juan Dela Cruz';
   
   -- Displaying values
   DBMS_OUTPUT.PUT_LINE('Student 1: ' || v_students(1));
   DBMS_OUTPUT.PUT_LINE('Student 2: ' || v_students(2));
END;
/
