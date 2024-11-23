INSERT INTO departments (name, capacity) VALUES
('Admin Department', 50),
('Academic Department', 100),
('IT Department', 30);

-- Insert employees
INSERT INTO employees (first_name, last_name, email, title, photograph_path, department_id) VALUES
('John', 'Doe', 'john.doe@university.com', 'Admin Officer', '/photos/john.jpg', 1),
('Jane', 'Smith', 'jane.smith@university.com', 'Department Head', '/photos/jane.jpg', 1),
('Mike', 'Johnson', 'mike.johnson@university.com', 'Admin Assistant', '/photos/mike.jpg', 1);

-- Insert specialisations
INSERT INTO specialisation (code, name, description, year, credits_required) VALUES
('TS', 'Theory & Systems', 'Focuses on theoretical computer science and systems design', 2024, 20),
('DS', 'Data Science', 'Covers machine learning, data analytics, and statistical methods', 2024, 20),
('SE', 'Software Engineering', 'Software development methodologies and engineering practices', 2024, 20),
('AI', 'Artificial Intelligence', 'Study of intelligent systems and cognitive computing', 2024, 20);

-- Insert courses
INSERT INTO courses (course_code, name, description, year, term, faculty, credits, capacity) VALUES
('CS501', 'Advanced Algorithms', 'Study of complex algorithms and their applications', 2024, 'Fall', 'Dr. Smith', 4, 60),
('CS502', 'Machine Learning', 'Introduction to machine learning concepts and applications', 2024, 'Fall', 'Dr. Johnson', 4, 50),
('CS503', 'Software Architecture', 'Enterprise software design patterns and practices', 2024, 'Spring', 'Dr. Davis', 4, 55),
('CS504', 'AI Fundamentals', 'Basic concepts of artificial intelligence', 2024, 'Spring', 'Dr. Wilson', 4, 45);

-- Insert specialisation-course mappings
INSERT INTO specialisation_course (specialisation_id, course_id) VALUES
(1, 1), -- Theory & Systems - Advanced Algorithms
(2, 2), -- Data Science - Machine Learning
(3, 3), -- Software Engineering - Software Architecture
(4, 4); -- AI - AI Fundamentals