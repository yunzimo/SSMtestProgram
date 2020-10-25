package com.yunzimo.Service;

import com.yunzimo.Bean.Doctor;
import com.yunzimo.Mapper.DoctorMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DoctorServiceImp implements DoctorService{

    @Autowired
    private DoctorMapper doctorMapper;

    @Override
    public List<Doctor> QueryAll() {
        List<Doctor> doctors = doctorMapper.QueryAll();
        System.out.println(doctors);
        return doctors;
    }

    @Override
    public List<Doctor> QueryDoctorByDepartment(int department) {
        List<Doctor> doctors = doctorMapper.QueryDoctorByDepartment(department);
        System.out.println(doctors);
        return doctors;
    }
}
