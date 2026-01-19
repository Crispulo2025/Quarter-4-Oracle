DECLARE
    v_score1 NUMBER(5,2);
    v_score2 NUMBER(5,2);
    v_sum    NUMBER(5,2);
BEGIN
    v_score1 := 80.5;
    v_score2 := 90.25;
    v_sum := v_score1 + v_score2;
    DBMS_OUTPUT.PUT_LINE('Sum of Scores: ' || v_sum);
END;
/
