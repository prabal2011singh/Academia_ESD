package com.prabal.academia.entity;

import jakarta.persistence.*;
import lombok.*;
import java.util.Set;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "specialisation")
public class Specialization {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "specialization_id")
    private Long specialisationId;

    @Column(name = "code", unique = true, nullable = false)
    private String code;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "description", nullable = false)
    private String description;

    @Column(name = "year", nullable = false)
    private Integer year;

    @Column(name = "creditsRequired", nullable = false)
    private Integer creditsRequired;

    @OneToMany(mappedBy = "specialization", cascade = CascadeType.REMOVE)
    private Set<SpecializationCourse> specializationCourses;
}