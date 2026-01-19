DECLARE
    v_marks NUMBER(5,2);
BEGIN
    v_marks := 87.75;
    DBMS_OUTPUT.PUT_LINE('Rounded Marks: ' || ROUND(v_marks));
END;
/
