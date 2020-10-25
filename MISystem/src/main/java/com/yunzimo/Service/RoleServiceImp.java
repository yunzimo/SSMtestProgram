package com.yunzimo.Service;

import com.yunzimo.Bean.Role;
import com.yunzimo.Bean.RoleSources;
import com.yunzimo.mapper.RoleMapper;
import com.yunzimo.mapper.RoleSourcesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class RoleServiceImp implements RoleService{

    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private RoleSourcesMapper roleSourcesMapper;
    @Override
    public List<Role> QueryAll() {
        List<Role> roles = roleMapper.showRoleInfo();
        System.out.println(roles);
        return roles;
    }



    @Override
    public boolean addRole(Role role, Integer[] ids) {

        boolean b = addRole(role);
        System.out.println(role);
        List<RoleSources> roleList=new ArrayList<>();
        for(int id:ids){
            RoleSources roleSources=new RoleSources();
            roleSources.setRoleFk(role.getRoleid());
            roleSources.setResourcesFk(id);
            roleList.add(roleSources);
        }
        System.out.println(roleList);
        //int i = roleSourcesMapper.addRoleSources(roleList);
        for(RoleSources rs:roleList){
            System.out.println(rs);
            roleSourcesMapper.addRs(rs);
        }
        System.out.println("=====================================");
        return b;
    }

    @Override
    public boolean addRole(Role role) {
        int i = roleMapper.addRole(role);
        return i>0;
    }
}
