package com.prabal.academia.mapper;

import com.prabal.academia.dto.CourseResponse;
import com.prabal.academia.entity.Course;
import org.springframework.stereotype.Service;

@Service
public class CourseMapper {
    public CourseResponse toResponse(Course entity) {
        return CourseResponse.builder()
                .id(entity.getCourseId())
                .courseCode(entity.getCourseCode())
                .name(entity.getName())
                .description(entity.getDescription())
                .year(entity.getYear())
                .term(entity.getTerm())
                .faculty(entity.getFaculty())
                .credits(entity.getCredits())
                .capacity(entity.getCapacity())
                .build();
    }
}
