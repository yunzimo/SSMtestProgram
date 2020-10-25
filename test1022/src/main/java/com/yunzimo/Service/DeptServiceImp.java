package com.yunzimo.Service;

import com.yunzimo.Bean.Dept;
import com.yunzimo.mapper.DeptMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DeptServiceImp implements DeptService{

    @Autowired
    private DeptMapper deptMapper;
    @Override
    public List<Dept> QueryAll() {
        List<Dept> depts = deptMapper.QueryAll();
        System.out.println(depts);
        return depts;
    }
}
