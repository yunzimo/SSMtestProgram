package com.yunzimo.Controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yunzimo.Bean.ResultMsg;
import com.yunzimo.Bean.Role;
import com.yunzimo.Service.RoleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import java.sql.ResultSet;
import java.util.Arrays;
import java.util.List;

@Controller
public class RoleController {

    @Autowired
    private RoleService roleService;

    @RequestMapping("showRoleInfo")
    public String showRoleInfo(Model model, @RequestParam(defaultValue = "1") int pageNum){
        PageHelper.startPage(pageNum,2);
        List<Role> roles = roleService.QueryAll();
        PageInfo<Role> pageInfo=new PageInfo<>(roles);
        model.addAttribute("pageInfo",pageInfo);
        return "forward:list-role.jsp";

    }

    @RequestMapping("addRole")
    @ResponseBody
    public ResultMsg addRole(Role role, Integer[] ids){
        System.out.println(role);
        System.out.println(Arrays.toString(ids));
        ResultMsg resultMsg=new ResultMsg();
        boolean b = roleService.addRole(role, ids);
        resultMsg.setFlag(b);
        System.out.println(resultMsg);
        return resultMsg;
    }
}
