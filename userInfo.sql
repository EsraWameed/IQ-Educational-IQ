/* created table to collect information about users*/
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL
);

/* created table to collect information about users*/
CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
/* to create indexes on some columns for better query performance */
CREATE INDEX idx_users_username ON users (username);

/* inclding initial data to script*/
INSERT INTO users (username, email, password) VALUES
    ('Esra_Al', 'esra@yahoo.com', 'some_random_pass');
