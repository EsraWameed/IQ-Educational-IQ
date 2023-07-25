/* created table to collect information about users*/
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL
);

/* created table to collect information about users*/
CREATE TABLE notes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT,
    student_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id)
);
/* to create indexes on some columns for better query performance */
CREATE INDEX idx_users_username ON students (username);

/* inclding initial data to script*/
INSERT INTO students (username, email, password) VALUES
    ('Esra_Al', 'esra@yahoo.com', 'some_random_pass');
