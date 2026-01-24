DECLARE
    -- Declare a nested table type for storing employee salaries
    TYPE salary_table IS TABLE OF NUMBER;
    v_salaries salary_table := salary_table(5000, 6000, 7000, 8000);
BEGIN
    -- Display original salaries
    DBMS_OUTPUT.PUT_LINE('Original Salaries:');
    FOR i IN 1..v_salaries.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('Salary ' || i || ': ' || v_salaries(i));
    END LOOP;

    -- Update the second element
    v_salaries(2) := 6500;

    -- Display salaries after update
    DBMS_OUTPUT.PUT_LINE('Salaries after updating the second element:');
    FOR i IN 1..v_salaries.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('Salary ' || i || ': ' || v_salaries(i));
    END LOOP;
END;
/
