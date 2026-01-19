DECLARE
    v_first_name VARCHAR2(30);
    v_last_name  VARCHAR2(30);
    v_full_name  VARCHAR2(60);
BEGIN
    v_first_name := 'Juan';
    v_last_name := 'Dela Cruz';
    v_full_name := v_first_name || ' ' || v_last_name;
    DBMS_OUTPUT.PUT_LINE('Full Name: ' || v_full_name);
END;
/
