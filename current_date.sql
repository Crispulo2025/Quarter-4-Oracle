DECLARE
    v_current_date DATE;
BEGIN
    v_current_date := SYSDATE;
    DBMS_OUTPUT.PUT_LINE('Current Date: ' || TO_CHAR(v_current_date, 'DD-MON-YYYY'));
END;
/
