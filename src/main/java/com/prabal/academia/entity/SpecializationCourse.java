package com.prabal.academia.entity;

import jakarta.persistence.*;
import lombok.*;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "specialisation_course")
public class SpecializationCourse {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "specialisation_id")
    private Specialization specialization;

    @OneToOne
    @JoinColumn(name = "course_id")
    private Course course;
}