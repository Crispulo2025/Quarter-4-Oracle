DECLARE
    v_height NUMBER(4,2);
BEGIN
    v_height := 1.70;
    v_height := v_height + 0.05;
    DBMS_OUTPUT.PUT_LINE('Updated Height: ' || v_height || ' meters');
END;
/
