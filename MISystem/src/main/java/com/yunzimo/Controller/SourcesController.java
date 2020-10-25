package com.yunzimo.Controller;

import com.yunzimo.Bean.Sources;
import com.yunzimo.Bean.ResultMsg;
import com.yunzimo.Service.SourcesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class SourcesController {

    @Autowired
    private SourcesService sourcesService;

    @RequestMapping("showTreeInfo")
    @ResponseBody
    public Sources showTreeInfo(){
        Sources sources = sourcesService.showTreeInfo();
        System.out.println(sources);
        return  sources;
    }

    @RequestMapping("showAllParentSource")
    @ResponseBody
    public List<Sources> showAllParentSource(){
        List<Sources> sources = sourcesService.showAllParentSource();
        return  sources;
    }

    @RequestMapping("addSource")
    public String addSource(Sources sources){
        Boolean b = sourcesService.addSource(sources);
        if(b){
            System.out.println("插入成功");
        }
        else{
            System.out.println("插入失败");
        }
        return "redirect:list-resources.jsp";
    }

    @RequestMapping("deleteInfo")
    @ResponseBody
    public ResultMsg deleteInfo(int id){
        ResultMsg success=new ResultMsg();
        success.setFlag(sourcesService.deleteInfo(id));

        return success;
    }

    @RequestMapping("getOneInfo")
    @ResponseBody
    public Map getOneInfo(int id){
        Map<String,Object> results = new HashMap<>();
        Sources one = sourcesService.getOne(id);
        results.put("one",one);
        List<Sources> more = sourcesService.showAllParentSource();
        results.put("more",more);
        return results;
    }

    @RequestMapping("updateSource")
    public String updateSource(Sources sources){
        Boolean aBoolean = sourcesService.updateSource(sources);
        if(aBoolean){
            System.out.println("修改成功");
        }else{
            System.out.println("修改失败");
        }
        return "redirect:list-resources.jsp";
    }


}
