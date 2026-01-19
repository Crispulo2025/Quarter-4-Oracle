DECLARE
    v_student_id NUMBER;
    v_teacher_id NUMBER;
BEGIN
    v_student_id := 202601;
    v_teacher_id := 1001;
    DBMS_OUTPUT.PUT_LINE('Student ID: ' || v_student_id || ', Teacher ID: ' || v_teacher_id);
END;
/
