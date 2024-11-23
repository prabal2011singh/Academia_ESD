package com.prabal.academia.service;

import com.prabal.academia.entity.Employee;
import com.prabal.academia.helper.EncryptionService;
import com.prabal.academia.repo.EmployeeRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@AllArgsConstructor
public class EmployeeService {

    private final EmployeeRepository employeeRepository;
    private final EncryptionService encryptionService;

    @Transactional
    public Employee createEmployee(Employee employee) {

     // Save the employee
        employee.setPassword(encryptionService.encode(employee.getPassword()));
        return employeeRepository.save(employee);
    }
}