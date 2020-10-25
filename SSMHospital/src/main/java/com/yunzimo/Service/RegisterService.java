package com.yunzimo.Service;

import com.yunzimo.Bean.Register;

import java.util.List;

public interface RegisterService {
    public List<Register> QueryAll();
    public Register QueryByRid(int rid);
    public boolean UpdateByRid(Register register);
    public boolean DeleteByRid(int rid);
    public boolean addRegister(Register register);
    public List<Register> QueryByKey(Register register);
}
