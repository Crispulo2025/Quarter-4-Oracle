DECLARE
    -- Nested table type
    TYPE nested_table_example IS TABLE OF NUMBER;
    v_nested nested_table_example := nested_table_example(10, 20, 30, 40, 50);
BEGIN
    -- Display original elements
    DBMS_OUTPUT.PUT_LINE('Original Nested Table Elements:');
    FOR i IN 1..v_nested.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('Element ' || i || ': ' || v_nested(i));
    END LOOP;

    -- Delete the third element
    v_nested.DELETE(3);

    -- Display elements after deletion
    DBMS_OUTPUT.PUT_LINE('Nested Table Elements after deleting 3rd element:');
    FOR i IN 1..v_nested.COUNT LOOP
        -- Check if the element exists (nested tables can be sparse)
        IF v_nested.EXISTS(i) THEN
            DBMS_OUTPUT.PUT_LINE('Element ' || i || ': ' || v_nested(i));
        END IF;
    END LOOP;
END;
/
