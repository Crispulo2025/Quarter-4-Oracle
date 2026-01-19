DECLARE
    v_score  NUMBER(5,2);
    v_passed BOOLEAN;
BEGIN
    v_score := 75;
    IF v_score >= 70 THEN
        v_passed := TRUE;
    ELSE
        v_passed := FALSE;
    END IF;

    IF v_passed THEN
        DBMS_OUTPUT.PUT_LINE('The student has passed.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The student has failed.');
    END IF;
END;
/
