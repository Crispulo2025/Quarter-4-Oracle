DECLARE
    -- Nested Table Example
    TYPE nested_table_example IS TABLE OF NUMBER;
    v_nested nested_table_example := nested_table_example(10, 20, 30);

    -- VARRAY Example
    TYPE varray_example IS VARRAY(3) OF NUMBER;
    v_varray varray_example := varray_example(100, 200, 300);
BEGIN
    -- Display initial elements
    DBMS_OUTPUT.PUT_LINE('Nested Table before DELETE:');
    FOR i IN 1..v_nested.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(v_nested(i));
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('VARRAY before DELETE:');
    FOR i IN 1..v_varray.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(v_varray(i));
    END LOOP;

    -- Remove all elements
    v_nested.DELETE;  -- deletes all elements from nested table
    v_varray.DELETE;  -- deletes all elements from VARRAY

    -- Display count after deletion
    DBMS_OUTPUT.PUT_LINE('Nested Table COUNT after DELETE: ' || v_nested.COUNT);
    DBMS_OUTPUT.PUT_LINE('VARRAY COUNT after DELETE: ' || v_varray.COUNT);
END;
/
