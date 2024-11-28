INSERT INTO departments (name, capacity) VALUES
('Computer Science', 500),
('Electrical Engineering', 400),
('Mechanical Engineering', 350),
('Civil Engineering', 300),
('Information Technology', 450);

-- Employees (passwords are hashed versions of 'password123')
INSERT INTO employees (first_name, last_name, email, password, title, photograph_path, department_id) VALUES
('John', 'Doe', 'john.doe@university.com', '$2a$10$xPJ5VZwXnXu6q0VzKK8Z8O.vlJ9z9KyGK9AOF/FBdxm0sCVx5cVKm', 'Professor', '/photos/john-doe.jpg', 1),
('Jane', 'Smith', 'jane.smith@university.com', '$2a$10$xPJ5VZwXnXu6q0VzKK8Z8O.vlJ9z9KyGK9AOF/FBdxm0sCVx5cVKm', 'Associate Professor', '/photos/jane-smith.jpg', 2),
('Robert', 'Johnson', 'robert.johnson@university.com', '$2a$10$xPJ5VZwXnXu6q0VzKK8Z8O.vlJ9z9KyGK9AOF/FBdxm0sCVx5cVKm', 'Assistant Professor', '/photos/robert-johnson.jpg', 3),
('Mary', 'Williams', 'mary.williams@university.com', '$2a$10$xPJ5VZwXnXu6q0VzKK8Z8O.vlJ9z9KyGK9AOF/FBdxm0sCVx5cVKm', 'Professor', '/photos/mary-williams.jpg', 4),
('Michael', 'Brown', 'michael.brown@university.com', '$2a$10$xPJ5VZwXnXu6q0VzKK8Z8O.vlJ9z9KyGK9AOF/FBdxm0sCVx5cVKm', 'Professor', '/photos/michael-brown.jpg', 5);

-- Courses
INSERT INTO courses (course_code, course_name, description, year, term, faculty, credit('CS101', 'Introduction to Programming', 'Basic programming concepts using Java', 1, 'Fall', 'Computer('CS201', 'Data Structures', 'Advanced programming concepts and data structures', 2, 'Spring', 'Compute('EE101', 'Circuit Analysis', 'Fundamentals of electrical circuits', 1, 'Fall', 'Electrical En('ME101', 'Engineering Mechanics', 'Basic mechanical engineering principles', 1, 'Fall', 'Mechanical En('CV101', 'Structural Analysis', 'Fundamentals of civil engineering structures', 1, 'Spring', 'Civil Engineering', 3, 75);

-- Specializations
INSERT INTO specialization (code, name, description, year, creditsRequired) VALUES
('CS-SE', 'Software Engineering', 'Specialization in software development and engineering', 2023, 120),
('CS-AI', 'Artificial Intelligence', 'Focus on AI and machine learning', 2023, 130),
('EE-PE', 'Power Engineering', 'Specialization in electrical power systems', 2023, 125),
('ME-TD', 'Thermal Design', 'Focus on thermal systems and design', 2023, 128),
('CV-ST', 'Structural Engineering', 'Specialization in structural design and analysis', 2023, 126);

-- Specialization Courses
INSERT INTO specialization_course (specialization_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);