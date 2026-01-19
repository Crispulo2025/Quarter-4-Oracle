DECLARE
    v_student_name VARCHAR2(50);
    v_score        NUMBER(5,2);
    v_grade        CHAR(1);
BEGIN
    v_student_name := 'Juan Dela Cruz';
    v_score := 88.5;
    v_grade := 'B';
    DBMS_OUTPUT.PUT_LINE('Student ' || v_student_name || ' scored ' || v_score || ' and received grade ' || v_grade || '.');
END;
/
