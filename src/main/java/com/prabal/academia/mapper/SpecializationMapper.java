package com.prabal.academia.mapper;

import com.prabal.academia.dto.SpecializationRequest;
import com.prabal.academia.dto.SpecializationResponse;
import com.prabal.academia.entity.Specialization;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class SpecializationMapper {
    private final CourseMapper courseMapper;

    public Specialization toEntity(SpecializationRequest request) {
        return Specialization.builder()
                .code(request.code())
                .name(request.name())
                .description(request.description())
                .year(request.year())
                .creditsRequired(request.creditsRequired())
                .build();
    }

    public SpecializationResponse toResponse(Specialization entity) {
//        return SpecializationResponse.builder()
//                .id(entity.getSpecialisationId())
//                .code(entity.getCode())
//                .name(entity.getName())
//                .description(entity.getDescription())
//                .year(entity.getYear())
//                .creditsRequired(entity.getCreditsRequired())
//                .courses(entity.getSpecializationCourses().stream()
//                        .map(sc -> courseMapper.toResponse(sc.getCourse()))
//                        .toList())
//                .build();

        return new SpecializationResponse(
                entity.getSpecialisationId(),
                entity.getCode(),
                entity.getName(),
                entity.getDescription(),
                entity.getYear(),
                entity.getCreditsRequired()
        );
    }

    public void updateEntityFromRequest(Specialization entity, SpecializationRequest request) {
        entity.setCode(request.code());
        entity.setName(request.name());
        entity.setDescription(request.description());
        entity.setYear(request.year());
        entity.setCreditsRequired(request.creditsRequired());
    }
}