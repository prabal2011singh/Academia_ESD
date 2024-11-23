package com.prabal.academia.service;

import com.prabal.academia.dto.LoginRequest;
import com.prabal.academia.entity.Employee;
import com.prabal.academia.helper.EncryptionService;
import com.prabal.academia.helper.JWTHelper;
import com.prabal.academia.repo.EmployeeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class LoginService {
    private final EmployeeRepository employeeRepository;
    private final EncryptionService encryptionService;
    private final JWTHelper jwtHelper;

    public String loginEmployee(LoginRequest request) {
        Employee employee = employeeRepository.findByEmail(request.email())
                .orElseThrow(() -> new IllegalArgumentException("Invalid email or password"));

        if (!encryptionService.validates(request.password(), employee.getPassword())) {
            throw new IllegalArgumentException("Invalid email or password");
        }

        return jwtHelper.generateToken(request.email());
    }
}