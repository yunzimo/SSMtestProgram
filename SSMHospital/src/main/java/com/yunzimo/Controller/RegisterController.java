package com.yunzimo.Controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yunzimo.Bean.Doctor;
import com.yunzimo.Bean.Register;
import com.yunzimo.Service.DoctorService;
import com.yunzimo.Service.RegisterService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class RegisterController {

    @Autowired
    private RegisterService registerService;
    @Autowired
    private DoctorService doctorService;


    @RequestMapping("toRegisterIndex")
    public String toRegisterIndex(Model model,@RequestParam(defaultValue = "1") int current_page){
        PageHelper.startPage(current_page,2);
        List<Register> registers = registerService.QueryAll();
        PageInfo<Register> pageInfo=new PageInfo<>(registers);

        System.out.println(pageInfo.getNextPage());
        model.addAttribute("pageInfo",pageInfo);
        return "register/index";
    }


    @RequestMapping("toRegisterLook")
    public String toRegisterLook(Model model,int rid){
        Register register = registerService.QueryByRid(rid);
        model.addAttribute("register",register);
        return "register/look";
    }

    @RequestMapping("toRegisterEdit")
    public String toRegisterEdit(Model model,int rid){
        Register register = registerService.QueryByRid(rid);
        model.addAttribute("register",register);
        List<Doctor> doctors = doctorService.QueryDoctorByDepartment(register.getDepartment());
        model.addAttribute("doctorList",doctors);
        return "register/edit";
    }

    @RequestMapping("updateRegister")
    public String updateRegister(Register register){
        boolean b = registerService.UpdateByRid(register);
        if(b){
            return "redirect:toRegisterIndex";
        }else{
            return "redirect:toRegisterEdit";
        }

    }

    @RequestMapping("registerDel")
    public String registerDel(int rid){
        registerService.DeleteByRid(rid);
        return "redirect:toRegisterIndex";
    }

    @RequestMapping("toRegisterAdd")
    public String toRegisterAdd(){
        return "register/add";
    }

    @RequestMapping("addRegister")
    public String addRegister(Register register){
        registerService.addRegister(register);
        return "redirect:toRegisterIndex";
    }

    @RequestMapping("findRegister")
    public String findRegister(Model model, Register register,@RequestParam(defaultValue = "1")int current_page){
        System.out.println(register.getRid()+"    "+register.getDepartment()+"  "+register.getDid());
        PageHelper.startPage(current_page,2);
        List<Register> registers = registerService.QueryByKey(register);
        PageInfo<Register> pageInfo=new PageInfo<>(registers);
        model.addAttribute("pageInfo",pageInfo);
        return "forward:register/index";
    }


}
