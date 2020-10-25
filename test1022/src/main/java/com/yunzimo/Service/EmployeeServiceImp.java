package com.yunzimo.Service;

import com.yunzimo.Bean.Employee;
import com.yunzimo.mapper.EmployeeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImp implements EmployeeService{
    @Autowired
    private EmployeeMapper employeeMapper;
    @Override
    public List<Employee> QueryAll() {
        List<Employee> employees = employeeMapper.QueryAll();
        System.out.println(employees);
        return employees;
    }

    @Override
    public Boolean addEmployee(Employee employee) {
        int i = employeeMapper.addEmployee(employee);
        return i>0;
    }

    @Override
    public Boolean DelEmployee(int eid) {
        int i = employeeMapper.DelEmployee(eid);
        return i>0;
    }

    @Override
    public Employee QueryOne(int eid) {
        Employee employee = employeeMapper.QueryOne(eid);
        System.out.println(employee);
        return employee;
    }

    @Override
    public boolean updateEmployee(Employee employee) {
        int i = employeeMapper.updateEmployee(employee);
        return i>0;
    }
}
