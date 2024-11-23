ALTER TABLE employees
    ADD CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id) REFERENCES departments(department_id);

ALTER TABLE specialisation_course
    ADD CONSTRAINT fk_spec_course_specialisation
        FOREIGN KEY (specialisation_id) REFERENCES specialisation(specialisation_id);

ALTER TABLE specialisation_course
    ADD CONSTRAINT fk_spec_course_course
        FOREIGN KEY (course_id) REFERENCES courses(course_id);