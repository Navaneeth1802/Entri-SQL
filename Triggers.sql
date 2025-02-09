-- 1. Create the teachers table
CREATE TABLE teachers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    names VARCHAR(100) NOT NULL,
    subjects VARCHAR(50) NOT NULL,
    experience INT NOT NULL,
    salary DECIMAL(10,2) NOT NULL
);

-- Insert 8 rows into the teachers table
INSERT INTO teachers (names, subjects, experience, salary) VALUES
('Amit Sharma', 'Mathematics', 8, 55000),
('Priya Verma', 'Science', 12, 60000),
('Rajesh Kumar', 'English', 5, 45000),
('Neha Singh', 'Computer Science', 10, 70000),
('Vikas Reddy', 'Physics', 15, 80000),
('Anjali Pandey', 'Chemistry', 7, 50000),
('Sandeep Yadav', 'Biology', 9, 48000),
('Rohit Das', 'History', 11, 55000);

-- 2. Trigger to prevent negative salary
DELIMITER $$
CREATE TRIGGER before_insert_teacher
BEFORE INSERT ON teachers
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;
END $$
DELIMITER ;

#3. Teacher_log table
CREATE TABLE teacher_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_id INT,
    action VARCHAR(50),
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (teacher_id) REFERENCES teachers(id) ON DELETE CASCADE
);

#AFTER INSERT trigger to log insert actions
DELIMITER $$
CREATE TRIGGER after_insert_teacher
AFTER INSERT ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)
    VALUES (NEW.id, 'INSERT', NOW());
END $$
DELIMITER ;

#4. Create a BEFORE DELETE trigger to prevent deletion
DELIMITER $$
CREATE TRIGGER before_delete_teacher
BEFORE DELETE ON teachers
FOR EACH ROW
BEGIN
    IF OLD.experience > 10 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete teachers with more than 10 years of experience';
    END IF;
END $$
DELIMITER ;

#5.AFTER DELETE trigger 
DELIMITER $$
CREATE TRIGGER after_delete_teacher
AFTER DELETE ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)
    VALUES (OLD.id, 'DELETE', NOW());
END $$
DELIMITER ;
