CREATE TABLE departments (
                             department_id INT PRIMARY KEY AUTO_INCREMENT,
                             name VARCHAR(255),
                             capacity INT
);

CREATE TABLE employees (
                           id INT PRIMARY KEY AUTO_INCREMENT,
                           first_name VARCHAR(255) NOT NULL,
                           last_name VARCHAR(255),
                           email VARCHAR(255) NOT NULL UNIQUE,
                           password VARCHAR(255) NOT NULL,
                           title VARCHAR(255) NOT NULL,
                           photograph_path VARCHAR(255),
                           department_id INT NOT NULL
);

CREATE TABLE courses (
                         course_id INT PRIMARY KEY AUTO_INCREMENT,
                         course_code VARCHAR(255) NOT NULL UNIQUE,
                         course_name VARCHAR(255) NOT NULL,
                         description TEXT,
                         year INTEGER,
                         term VARCHAR(50),
                         faculty VARCHAR(255),
                         credits INT,
                         capacity INT
);

CREATE TABLE specialization (
                                specialization_id INT PRIMARY KEY AUTO_INCREMENT,
                                code VARCHAR(255) NOT NULL UNIQUE,
                                name VARCHAR(255) NOT NULL,
                                description TEXT NOT NULL,
                                year INT NOT NULL,
                                creditsRequired INT NOT NULL
);

CREATE TABLE specialization_course (
                                       id INT PRIMARY KEY AUTO_INCREMENT,
                                       specialization_id INT,
                                       course_id INT
);