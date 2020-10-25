package com.yunzimo.mapper;


import com.yunzimo.Bean.Dept;

import java.util.List;

public interface DeptMapper {
    public List<Dept> QueryAll();
    public int addDept(Dept dept);
}