package com.yunzimo.Service;

import com.yunzimo.Bean.RoleSources;
import com.yunzimo.mapper.RoleSourcesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleSourcesServiceImp implements RoleSourcesService {

    @Autowired
    private RoleSourcesMapper roleSourcesMapper;
    @Override
    public boolean addRoleSource(List<RoleSources> roleSourcesList) {
        int i = roleSourcesMapper.addRoleSources(roleSourcesList);

        return i>0;
    }
}
