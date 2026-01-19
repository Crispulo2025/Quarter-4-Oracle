DECLARE
    v_student_name VARCHAR2(50);
BEGIN
    v_student_name := 'Juan Dela Cruz';
    DBMS_OUTPUT.PUT_LINE('Student Name: ' || v_student_name);
END;
/
