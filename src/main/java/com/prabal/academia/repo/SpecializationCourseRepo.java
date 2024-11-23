package com.prabal.academia.repo;

import com.prabal.academia.entity.Specialization;
import com.prabal.academia.entity.SpecializationCourse;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;


public interface SpecializationCourseRepo extends JpaRepository<SpecializationCourse, Long> {
    List<SpecializationCourse> findBySpecialization (Specialization spec);
}
