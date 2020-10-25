package com.yunzimo.Controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yunzimo.Bean.Dept;
import com.yunzimo.Bean.EmpRole;
import com.yunzimo.Bean.Employee;
import com.yunzimo.Bean.Role;
import com.yunzimo.Service.DeptService;
import com.yunzimo.Service.EmpRoleService;
import com.yunzimo.Service.EmpService;
import com.yunzimo.Service.RoleService;
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
public class EmpController {

    @Autowired
    private EmpService empService;
    @Autowired
    private DeptService deptService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private EmpRoleService empRoleService;

    @RequestMapping("showEmpInfo")
    public String showEmpInfo(Model model, @RequestParam(defaultValue = "1")int pageNum){

        PageHelper.startPage(pageNum,3);
        List<Employee> employees = empService.QueryAll();
        PageInfo<Employee> pageInfo=new PageInfo<>(employees);
        model.addAttribute("pageInfo",pageInfo);
        return "forward:list-employee.jsp";
    }

    @RequestMapping("indexInfo")
    @ResponseBody
    public Map indexInfo(){
        Map<String,Object> map=new HashMap<>();
        List<Dept> depts = deptService.QueryAll();
        map.put("dept",depts);
        List<Role> roleList = roleService.QueryAll();
        map.put("role",roleList);
        return map;
    }

    @RequestMapping("addEmployee")
    public String addEmployee(Employee employee){
        System.out.println(employee);
        Boolean aBoolean = empService.InsertInfo(employee);
        if(aBoolean){
            System.out.println("插入员工表成功");
            EmpRole empRole=new EmpRole(employee.getRoleid(),employee.getDfk());
            Boolean b = empRoleService.InsertInfo(empRole);
            if(b){
                System.out.println("插入员工角色表成功");
            }else{
                System.out.println("插入员工角色表失败");
            }
        }else {
            System.out.println("插入员工表失败");
        }

        return "redirect:showEmpInfo";
    }
}
