-- Example table to store essays
CREATE TABLE student_essays (
    student_id NUMBER PRIMARY KEY,
    student_name VARCHAR2(100),
    essay_text CLOB
);

-- PL/SQL block to store a student essay
DECLARE
    v_essay CLOB;
BEGIN
    -- Create a temporary CLOB
    DBMS_LOB.CREATETEMPORARY(v_essay, TRUE);

    -- Store the student essay into the CLOB
    DBMS_LOB.WRITEAPPEND(v_essay, LENGTH('This is my essay about environmental conservation. It explains the importance of reducing pollution, protecting wildlife, and conserving natural resources.'), 
                         'This is my essay about environmental conservation. It explains the importance of reducing pollution, protecting wildlife, and conserving natural resources.');

    -- Insert the essay into the table
    INSERT INTO student_essays (student_id, student_name, essay_text)
    VALUES (1, 'John Doe', v_essay);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student essay has been stored successfully.');

    -- Free the temporary CLOB
    DBMS_LOB.FREETEMPORARY(v_essay);
END;
/
