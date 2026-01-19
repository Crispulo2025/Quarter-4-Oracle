DECLARE
   v_num    NUMBER := 100;  -- numerator
   v_den    NUMBER := 0;    -- denominator (may cause error)
   v_result NUMBER;         -- result of division
BEGIN
   -- Attempt the division
   v_result := v_num / v_den;
   
   DBMS_OUTPUT.PUT_LINE('Result is: ' || v_result);

EXCEPTION
   -- Handle division by zero
   WHEN ZERO_DIVIDE THEN
      DBMS_OUTPUT.PUT_LINE('Error: Division by zero is not allowed.');

   -- Handle any other unexpected errors
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('An unexpected error occurred: ' || SQLERRM);
END;
