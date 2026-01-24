DECLARE
    -----------------------------------------------------------------
    -- VARRAY: Fixed maximum size, maintains order, cannot be sparse
    -----------------------------------------------------------------
    TYPE varray_example IS VARRAY(5) OF NUMBER;
    v_varray varray_example := varray_example(10, 20, 30);

    -----------------------------------------------------------------
    -- Nested Table: No fixed maximum size, can be sparse (empty elements), 
    -- can grow dynamically
    -----------------------------------------------------------------
    TYPE nested_table_example IS TABLE OF NUMBER;
    v_nested nested_table_example := nested_table_example();
BEGIN
    -- Display VARRAY elements
    DBMS_OUTPUT.PUT_LINE('VARRAY Elements:');
    FOR i IN 1..v_varray.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('Element ' || i || ': ' || v_varray(i));
    END LOOP;

    -- Display Nested Table elements (initially empty)
    DBMS_OUTPUT.PUT_LINE('Nested Table Elements (before adding values): ' || v_nested.COUNT);

    -- Add elements to the nested table dynamically
    v_nested.EXTEND(3);
    v_nested(1) := 100;
    v_nested(2) := 200;
    v_nested(3) := 300;

    -- Display Nested Table elements after adding
    DBMS_OUTPUT.PUT_LINE('Nested Table Elements (after adding values):');
    FOR i IN 1..v_nested.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('Element ' || i || ': ' || v_nested(i));
    END LOOP;
END;
/
