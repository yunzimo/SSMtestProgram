package com.yunzimo.Controller;


import com.yunzimo.Bean.Resources;

import com.yunzimo.Service.ResService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;

@Controller
public class ResourcesController {

    @Autowired
    private ResService resService;


    @RequestMapping("getAllResInfo")
    @ResponseBody
    public List<Resources> getAllResInfo(){
        List<Resources> allResource = resService.getAllResource();
        return allResource;
    }


}
