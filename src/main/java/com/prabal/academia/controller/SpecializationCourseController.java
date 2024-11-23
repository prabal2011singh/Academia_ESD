package com.prabal.academia.controller;


import com.prabal.academia.service.SpecializationService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api/v1/specializationcourse")
public class SpecializationCourseController {
    private final SpecializationService specializationService;

    @GetMapping("/{id}")
    public ResponseEntity<List<String>> getSpecializationCourse(@PathVariable Long id) {
        return ResponseEntity.ok(specializationService.getSpecializationCourse(id));
    }
}
