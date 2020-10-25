package com.yunzimo.mapper;


import com.yunzimo.Bean.Dept;

import java.util.List;

public interface DeptMapper {
    public Dept QueryByDeptno(int deptno);
    public List<Dept> QueryAll();
}