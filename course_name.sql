DECLARE
    v_course_name VARCHAR2(50);
BEGIN
    v_course_name := 'Introduction to PL/SQL';
    DBMS_OUTPUT.PUT_LINE('Course Name: ' || UPPER(v_course_name));
END;
/
