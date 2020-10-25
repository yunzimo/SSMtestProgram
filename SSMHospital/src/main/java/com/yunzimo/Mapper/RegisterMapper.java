package com.yunzimo.Mapper;

import com.yunzimo.Bean.Doctor;
import com.yunzimo.Bean.Register;

import java.util.List;

public interface RegisterMapper {
    public List<Register> QueryAll();
    public Register QueryByRid(int rid);
    public int UpdateByRid(Register register);
    public int DeleteByRid(int rid);
    public int addRegister(Register register);
    public List<Register> QueryByKey(Register register);
}
