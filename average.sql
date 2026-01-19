DECLARE
    v_score1  NUMBER(5,2);
    v_score2  NUMBER(5,2);
    v_average NUMBER(5,2);
BEGIN
    v_score1 := 85.5;
    v_score2 := 90.25;
    v_average := (v_score1 + v_score2) / 2;
    DBMS_OUTPUT.PUT_LINE('Average Score: ' || v_average);
END;
/
