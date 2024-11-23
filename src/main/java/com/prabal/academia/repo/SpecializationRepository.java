package com.prabal.academia.repo;

import com.prabal.academia.entity.Specialization;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface SpecializationRepository extends JpaRepository<Specialization, Long> {

}