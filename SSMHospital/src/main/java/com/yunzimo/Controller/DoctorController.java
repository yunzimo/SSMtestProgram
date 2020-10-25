package com.yunzimo.Controller;

import com.yunzimo.Bean.Doctor;
import com.yunzimo.Service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class DoctorController {

    @Autowired
    private DoctorService doctorService;

    @RequestMapping("QueryDoctorByDepartment")
    @ResponseBody
    public List<Doctor> QueryDoctorByDepartment(int department){
        List<Doctor> doctors = doctorService.QueryDoctorByDepartment(department);
        return doctors;
    }
}
