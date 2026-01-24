DECLARE
   v_clob   CLOB;
BEGIN
   -- Safely create (initialize) a temporary CLOB
   DBMS_LOB.CREATETEMPORARY(v_clob, TRUE);

   -- Write data into the LOB
   DBMS_LOB.WRITE(
      v_clob,
      LENGTH('Safe LOB operation example.'),
      1,
      'Safe LOB operation example.'
   );

   DBMS_OUTPUT.PUT_LINE('LOB operation completed successfully.');

   -- Free the temporary LOB
   IF DBMS_LOB.ISTEMPORARY(v_clob) = 1 THEN
      DBMS_LOB.FREETEMPORARY(v_clob);
   END IF;

EXCEPTION
   WHEN DBMS_LOB.INVALID_LOB_LOCATOR THEN
      DBMS_OUTPUT.PUT_LINE('Error: Invalid LOB locator.');

   WHEN DBMS_LOB.INVALID_OFFSET THEN
      DBMS_OUTPUT.PUT_LINE('Error: Invalid offset while accessing the LOB.');

   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);

      -- Ensure LOB is freed even if an error occurs
      IF DBMS_LOB.ISTEMPORARY(v_clob) = 1 THEN
         DBMS_LOB.FREETEMPORARY(v_clob);
      END IF;
END;
/
