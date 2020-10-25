package com.yunzimo.Service;

import com.yunzimo.Bean.EmpRole;
import com.yunzimo.mapper.EmpRoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmpRoleServiceImp implements EmpRoleService {

    @Autowired
    private EmpRoleMapper empRoleMapper;
    @Override
    public Boolean InsertInfo(EmpRole empRole) {
        int i = empRoleMapper.InsertInfo(empRole);
        return i>0;
    }
}
