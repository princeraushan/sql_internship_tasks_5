-- =====================================================
-- Task 5: SQL Developer Internship
-- Topic: Aggregate Functions & GROUP BY
-- =====================================================

-- Use the existing database
USE intern_training_db;

-- -----------------------------------------------------
-- Step 1: View all records
-- Helps understand data before aggregation
-- -----------------------------------------------------
SELECT * FROM students;

-- -----------------------------------------------------
-- Step 2: COUNT total number of students
-- -----------------------------------------------------
SELECT COUNT(*) AS total_students
FROM students;

-- -----------------------------------------------------
-- Step 3: COUNT non-NULL mobile numbers
-- Demonstrates NULL handling
-- -----------------------------------------------------
SELECT COUNT(mobile_number) AS students_with_mobile_numbers
FROM students;

-- -----------------------------------------------------
-- Step 4: MIN, MAX, AVG on age column
-- Finds youngest, oldest, and average age
-- -----------------------------------------------------
SELECT
    MIN(age) AS youngest_student_age,
    MAX(age) AS oldest_student_age,
    AVG(age) AS average_student_age
FROM students;

-- -----------------------------------------------------
-- Step 5: GROUP BY age
-- Count number of students in each age group
-- -----------------------------------------------------
SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age;

-- -----------------------------------------------------
-- Step 6: GROUP BY with ORDER BY
-- Sort age groups by number of students (descending)
-- -----------------------------------------------------
SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age
ORDER BY total_students DESC;

-- -----------------------------------------------------
-- Step 7: HAVING clause
-- Filter age groups having more than 2 students
-- -----------------------------------------------------
SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age
HAVING COUNT(*) > 2;

-- -----------------------------------------------------
-- Step 8: WHERE vs HAVING
-- WHERE filters rows before grouping
-- -----------------------------------------------------
SELECT age, COUNT(*) AS total_students
FROM students
WHERE age > 21
GROUP BY age;

-- -----------------------------------------------------
-- Step 9: HAVING filters groups after grouping
-- -----------------------------------------------------
SELECT age, COUNT(*) AS total_students
FROM students
GROUP BY age
HAVING age > 21;

-- -----------------------------------------------------
-- Step 10: Aggregate with column alias
-- Improves readability of result set
-- -----------------------------------------------------
SELECT age AS student_age, COUNT(*) AS student_count
FROM students
GROUP BY age;

-- -----------------------------------------------------
-- Step 11: Real-world analytics query
-- Count students registered on each date
-- -----------------------------------------------------
SELECT 
    DATE(created_at) AS registration_date,
    COUNT(*) AS total_students
FROM students
GROUP BY DATE(created_at);

-- -----------------------------------------------------
-- End of Task 5
-- Demonstrates aggregate functions and grouping
-- =====================================================
