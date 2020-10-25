package com.yunzimo.Service;

import com.yunzimo.Bean.Employee;
import com.yunzimo.mapper.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmpServiceImp implements EmpService{

    @Autowired
    private EmployeeMapper employeeMapper;
    @Override
    public List<Employee> QueryAll() {
        List<Employee> employees = employeeMapper.QueryAll();
        return employees;
    }

    @Override
    public Boolean InsertInfo(Employee employee) {
        int i = employeeMapper.InsertInfo(employee);
        return i>0;
    }
}
