BEGIN
   DECLARE
      v_counter NUMBER := 10;  -- starting value
   BEGIN
      WHILE v_counter >= 1 LOOP
         DBMS_OUTPUT.PUT_LINE(v_counter);
         v_counter := v_counter - 1;  -- decrement the counter
      END LOOP;
   END;
END;
