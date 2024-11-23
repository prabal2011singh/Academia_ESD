CREATE TABLE departments (
                             department_id INT AUTO_INCREMENT PRIMARY KEY,
                             name VARCHAR(100) NOT NULL,
                             capacity INT
);

CREATE TABLE employees (
                           employee_id INT AUTO_INCREMENT PRIMARY KEY,
                           first_name VARCHAR(50) NOT NULL,
                           last_name VARCHAR(50) NOT NULL,
                           email VARCHAR(100) UNIQUE NOT NULL,
                           title VARCHAR(100),
                           photograph_path VARCHAR(255),
                           department_id INT
);

CREATE TABLE specialisation (
                                specialisation_id INT AUTO_INCREMENT PRIMARY KEY,
                                code VARCHAR(10) UNIQUE NOT NULL,
                                name VARCHAR(100) NOT NULL,
                                description TEXT,
                                year INT,
                                credits_required INT
);

CREATE TABLE courses (
                         course_id INT AUTO_INCREMENT PRIMARY KEY,
                         course_code VARCHAR(10) UNIQUE NOT NULL,
                         name VARCHAR(100) NOT NULL,
                         description TEXT,
                         year INT,
                         term VARCHAR(20),
                         faculty VARCHAR(100),
                         credits INT,
                         capacity INT
);

CREATE TABLE specialisation_course (
                                       id INT AUTO_INCREMENT PRIMARY KEY,
                                       specialisation_id INT NOT NULL,
                                       course_id INT NOT NULL
);