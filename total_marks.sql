DECLARE
    v_total_marks NUMBER(5,2);
    c_max_marks   CONSTANT NUMBER := 100;
    v_percentage  NUMBER(5,2);
BEGIN
    v_total_marks := 85;
    v_percentage := (v_total_marks / c_max_marks) * 100;
    DBMS_OUTPUT.PUT_LINE('Percentage: ' || v_percentage || '%');
END;
/
