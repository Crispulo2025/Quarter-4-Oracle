DECLARE
    v_score  NUMBER(5,2);
    v_status VARCHAR2(10);
BEGIN
    v_score := 75;
    IF v_score >= 70 THEN
        v_status := 'Passed';
    ELSE
        v_status := 'Failed';
    END IF;
    DBMS_OUTPUT.PUT_LINE('Student Status: ' || v_status);
END;
/
