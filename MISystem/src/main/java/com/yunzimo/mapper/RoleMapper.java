package com.yunzimo.mapper;


import com.yunzimo.Bean.Role;

import java.util.List;

public interface RoleMapper {
    public List<Role> showRoleInfo();
    public int addRole(Role role);

}