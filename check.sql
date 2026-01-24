DECLARE
    -- Declare an associative array type
    TYPE emp_table IS TABLE OF VARCHAR2(50) INDEX BY PLS_INTEGER;
    v_employees emp_table;

BEGIN
    -- Populate the collection
    v_employees(1) := 'Alice';
    v_employees(2) := 'Bob';
    v_employees(4) := 'Charlie';  -- Note: index 3 is missing to demonstrate sparsity

    -- Attempt to access each index safely
    FOR i IN 1..4 LOOP
        IF v_employees.EXISTS(i) THEN
            DBMS_OUTPUT.PUT_LINE('Employee at index ' || i || ': ' || v_employees(i));
        ELSE
            DBMS_OUTPUT.PUT_LINE('No employee at index ' || i);
        END IF;
    END LOOP;
END;
/
