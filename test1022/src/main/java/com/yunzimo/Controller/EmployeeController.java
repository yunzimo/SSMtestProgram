package com.yunzimo.Controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yunzimo.Bean.Dept;
import com.yunzimo.Bean.Employee;
import com.yunzimo.Service.DeptService;
import com.yunzimo.Service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;
    @Autowired
    private DeptService deptService;

    @RequestMapping("showAllInfo")
    public String showAllInfo(Model model, @RequestParam(defaultValue = "1")int pageNum){
        PageHelper.startPage(pageNum,2);
        List<Employee> employees = employeeService.QueryAll();
        PageInfo<Employee> pageInfo=new PageInfo<>(employees);
        model.addAttribute("pageInfo",pageInfo);
        return "forward:list-employee.jsp";
    }

    @RequestMapping("addEmployee")
    public String addEmployee(Employee employee){
        System.out.println(employee);
        Boolean aBoolean = employeeService.addEmployee(employee);
        if(aBoolean){
            System.out.println("插入成功");
        }else{
            System.out.println("插入失败");
        }
        return "redirect:showAllInfo";
    }

    @RequestMapping("DelEmployee")
    public String DelEmployee(int eid){
        Boolean aBoolean = employeeService.DelEmployee(eid);
        if(aBoolean){
            System.out.println("删除成功");
        }else{
            System.out.println("删除失败");
        }
        return "redirect:showAllInfo";
    }

    @RequestMapping("getOneInfo")
    @ResponseBody
    public Map editEmployee(int eid,Model model){
        Employee employee = employeeService.QueryOne(eid);
        Map<String,Object> map=new HashMap<>();
        System.out.println(employee.getHirdate());
        map.put("one",employee);
        List<Dept> depts = deptService.QueryAll();
        map.put("more",depts);
        return map;
    }

    @RequestMapping("updateEmployee")
    public String updateEmployee(Employee employee){
        boolean b = employeeService.updateEmployee(employee);
        if(b){
            System.out.println("更新成功");
        }else{
            System.out.println("更新失败");
        }
        return "redirect:showAllInfo";
    }
}
