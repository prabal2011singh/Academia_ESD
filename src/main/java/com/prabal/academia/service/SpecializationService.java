package com.prabal.academia.service;

import com.prabal.academia.dto.SpecializationRequest;
import com.prabal.academia.dto.SpecializationResponse;
import com.prabal.academia.entity.Course;
import com.prabal.academia.entity.Specialization;
import com.prabal.academia.entity.SpecializationCourse;
import com.prabal.academia.mapper.SpecializationMapper;
import com.prabal.academia.repo.SpecializationCourseRepo;
import com.prabal.academia.repo.SpecializationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional
public class SpecializationService {
    private final SpecializationRepository specializationRepository;
    private final SpecializationCourseRepo specializationCourseRepo;
    private final SpecializationMapper specializationMapper;

    public List<SpecializationResponse> getAllSpecializations() {
        //System.out.println("===== in getall specialization");
        return specializationRepository.findAll().stream()
                .map(specializationMapper::toResponse)
                .collect(Collectors.toList());
    }

    public List<String> getSpecializationCourse(Long id)
    {
        Specialization spec=Specialization.builder().specializationId(id).build();
        List<SpecializationCourse> specCourses=specializationCourseRepo.findBySpecialization(spec);
        return specCourses.stream().map(specCourse->specCourse.getCourse().getName()).collect(Collectors.toList());
    }


    public SpecializationResponse getSpecialization(Long id) {
        Specialization specialization = specializationRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Specialization not found"));
        return specializationMapper.toResponse(specialization);
    }

    public SpecializationResponse createSpecialization(SpecializationRequest request) {
        Specialization specialization = specializationMapper.toEntity(request);
        specialization = specializationRepository.save(specialization);
        return specializationMapper.toResponse(specialization);
    }

    public SpecializationResponse updateSpecialization(Long id, SpecializationRequest request) {
        Specialization existing = specializationRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Specialization not found"));

        specializationMapper.updateEntityFromRequest(existing, request);
        existing = specializationRepository.save(existing);
        return specializationMapper.toResponse(existing);
    }

    public void deleteSpecialization(Long id) {
        Specialization spec=Specialization.builder().specializationId(id).build();
        List<SpecializationCourse> specCourses=specializationCourseRepo.findBySpecialization(spec);
        specializationCourseRepo.deleteAll(specCourses);
        specializationRepository.deleteById(id);
    }
}