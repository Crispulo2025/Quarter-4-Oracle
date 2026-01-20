DECLARE
   v_document CLOB;
BEGIN
   -- Example assignment
   v_document := 'This is a large text document stored in a CLOB variable.';
   
   -- Displaying a small portion (for demonstration)
   DBMS_OUTPUT.PUT_LINE(SUBSTR(v_document, 1, 50));
END;
/
