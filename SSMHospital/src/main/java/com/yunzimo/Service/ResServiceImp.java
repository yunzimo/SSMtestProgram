package com.yunzimo.Service;


import com.yunzimo.Bean.Resources;
import com.yunzimo.Mapper.ResMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResServiceImp implements ResService{

    @Autowired
    private ResMapper resMapper;

    @Override
    public List<Resources> getAllResource() {
        List<Resources> allResources = resMapper.getAllResources();
        return allResources;
    }
}
