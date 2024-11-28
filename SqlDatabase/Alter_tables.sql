ALTER TABLE employees
    ADD CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id) REFERENCES departments(department_id);

ALTER TABLE specialization_course
    ADD CONSTRAINT fk_specialization_course_specialization
        FOREIGN KEY (specialization_id) REFERENCES specialization(specialization_id);

ALTER TABLE specialization_course
    ADD CONSTRAINT fk_specialization_course_course
        FOREIGN KEY (course_id) REFERENCES courses(course_id);