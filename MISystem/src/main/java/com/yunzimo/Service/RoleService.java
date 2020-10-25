package com.yunzimo.Service;

import com.yunzimo.Bean.Role;

import java.util.List;

public interface RoleService {
    public List<Role> QueryAll();

    public boolean addRole(Role role,Integer[] ids);
    public boolean addRole(Role role);
}
