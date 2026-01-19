DECLARE
    v_email VARCHAR2(50);
BEGIN
    v_email := 'juan@example.com';
    DBMS_OUTPUT.PUT_LINE('Email: ' || v_email);
END;
/
