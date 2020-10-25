package com.yunzimo.Service;

import com.yunzimo.Bean.Employee;

import java.util.List;

public interface EmployeeService {
    public List<Employee> QueryAll();
    public Boolean addEmployee(Employee employee);
    public Boolean DelEmployee(int eid);
    public Employee QueryOne(int eid);
    public boolean updateEmployee(Employee employee);
}
