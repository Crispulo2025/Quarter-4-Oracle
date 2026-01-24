DECLARE
    -- Declare an associative array type indexed by VARCHAR2
    TYPE dept_table IS TABLE OF VARCHAR2(50) INDEX BY VARCHAR2(20);

    -- Declare a variable of the associative array type
    v_departments dept_table;
BEGIN
    -- Assign values using string indexes (department codes)
    v_departments('HR') := 'Human Resources';
    v_departments('IT') := 'Information Technology';
    v_departments('FIN') := 'Finance';
    v_departments('MKT') := 'Marketing';

    -- Display department names using their indexes
    DBMS_OUTPUT.PUT_LINE('Departments:');
    DBMS_OUTPUT.PUT_LINE('HR: ' || v_departments('HR'));
    DBMS_OUTPUT.PUT_LINE('IT: ' || v_departments('IT'));
    DBMS_OUTPUT.PUT_LINE('FIN: ' || v_departments('FIN'));
    DBMS_OUTPUT.PUT_LINE('MKT: ' || v_departments('MKT'));
END;
/
