package com.yunzimo.Service;

import com.yunzimo.Bean.Doctor;

import java.util.List;

public interface DoctorService {
    public List<Doctor> QueryAll();
    public List<Doctor> QueryDoctorByDepartment(int department);
}
