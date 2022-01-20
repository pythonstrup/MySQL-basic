
# 테이블 생성
CREATE TABLE students(
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20)
);

CREATE TABLE papers(
	title VARCHAR(100),
    grade INT,
    student_id INT,
    FOREIGN KEY(student_id) 
		REFERENCES students(id)
		ON DELETE CASCADE
);

# 데이터 입력
INSERT INTO students (first_name) VALUES 
('Caleb'), 
('Samantha'), 
('Raj'), 
('Carlos'), 
('Lisa');
 
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);


# 01
SELECT first_name, title, grade 
FROM students
JOIN papers
	ON students.id = student_id
ORDER BY grade DESC;


# 02
SELECT first_name, title, grade 
FROM students
LEFT JOIN papers
	ON students.id = student_id;


# 03
SELECT first_name, 
	IFNULL(title, "MISSING"), 
	IFNULL(grade, 0) AS grade
FROM students
LEFT JOIN papers
	ON students.id = student_id;
    
    
# 04
SELECT first_name,
	IFNULL(AVG(grade), 0) AS average
FROM students
LEFT JOIN papers
	ON students.id = student_id
GROUP BY first_name
ORDER BY average DESC;


# 05
SELECT first_name, 
	IFNULL(AVG(grade), 0) AS average,
    CASE
		WHEN AVG(grade) >= 75 THEN "PASSING"
        WHEN AVG(grade) IS NULL THEN "FAILING"
        ELSE "FAILING"
    END AS passing_status
FROM students
LEFT JOIN papers
	ON students.id = student_id
GROUP BY students.id
ORDER BY average DESC;
	



















