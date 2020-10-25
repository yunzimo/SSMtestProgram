package com.yunzimo.mapper;


import com.yunzimo.Bean.Employee;

import java.util.List;

public interface EmployeeMapper {
    public List<Employee> QueryAll();
    public int InsertInfo(Employee employee);
}