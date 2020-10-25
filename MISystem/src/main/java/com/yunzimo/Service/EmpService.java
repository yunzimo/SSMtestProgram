package com.yunzimo.Service;

import com.yunzimo.Bean.Employee;

import java.util.List;

public interface EmpService {
    public List<Employee> QueryAll();
    public Boolean InsertInfo(Employee employee);
}
