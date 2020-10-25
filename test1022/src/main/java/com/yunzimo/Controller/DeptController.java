package com.yunzimo.Controller;

import com.yunzimo.Bean.Dept;
import com.yunzimo.Service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class DeptController {

    @Autowired
    private DeptService deptService;

    @RequestMapping("showAllDept")
    @ResponseBody
    public List<Dept> showAllDept(){
        List<Dept> depts = deptService.QueryAll();
        return depts;
    }
}
