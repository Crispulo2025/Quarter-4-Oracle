CREATE OR REPLACE PROCEDURE update_student_grade (
    p_student_id IN NUMBER,   -- explicitly declare type
    p_exam_id    IN NUMBER,
    p_course_id  IN NUMBER,
    p_new_grade  IN NUMBER
)
IS
    -- User-defined exception for invalid grade
    grade_too_high EXCEPTION;
BEGIN
    -- Check for invalid grade
    IF p_new_grade > 100 THEN
        RAISE grade_too_high;
    END IF;

    -- Simulated update (replace with actual table update if accessible)
    -- UPDATE AD_EXAM_RESULTS
    -- SET MARKS = p_new_grade
    -- WHERE STUDENT_ID = p_student_id
    --   AND EXAM_ID = p_exam_id
    --   AND COURSE_ID = p_course_id;

    DBMS_OUTPUT.PUT_LINE('Grade updated successfully for student ' || p_student_id);

EXCEPTION
    WHEN grade_too_high THEN
        DBMS_OUTPUT.PUT_LINE('Error: Grade exceeds 100.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);
END update_student_grade;
/
