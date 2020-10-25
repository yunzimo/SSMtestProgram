package com.yunzimo.Mapper;

import com.yunzimo.Bean.Doctor;

import javax.swing.*;
import java.util.List;

public interface DoctorMapper {
    public Doctor QueryByDid(int did);
    public List<Doctor> QueryAll();
    public List<Doctor> QueryDoctorByDepartment(int department);
}
