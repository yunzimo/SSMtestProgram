package com.yunzimo.mapper;


import com.yunzimo.Bean.Employee;

import java.util.List;

public interface EmployeeMapper {
    public List<Employee> QueryAll();
    public int addEmployee(Employee employee);
    public int DelEmployee(int eid);
    public Employee QueryOne(int eid);
    public int updateEmployee(Employee employee);
}