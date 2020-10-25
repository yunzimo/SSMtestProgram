package com.yunzimo.Controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yunzimo.Bean.Dept;
import com.yunzimo.Service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class DeptController {

    @Autowired
    private DeptService deptService;
    @RequestMapping("showDeptInfo")
    public String showDeptInfo(Model model, @RequestParam(defaultValue = "1")int pageNum){
        PageHelper.startPage(pageNum,3);
        List<Dept> depts = deptService.QueryAll();
        PageInfo<Dept> pageInfo=new PageInfo<>(depts);
        model.addAttribute("pageInfo",pageInfo);
        return "forward:list-dept.jsp";
    }

    @RequestMapping("addDept")
    public String addDept(Dept dept){
        Boolean aBoolean = deptService.addDept(dept);
        if(aBoolean){
            System.out.println("插入成功");
        }else{
            System.out.println("插入失败");
        }
        return "redirect:showDeptInfo";
    }
}
