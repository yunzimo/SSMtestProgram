package com.yunzimo.Service;

import com.yunzimo.Bean.Doctor;
import com.yunzimo.Bean.Register;
import com.yunzimo.Mapper.RegisterMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sun.java2d.pipe.SpanIterator;

import java.util.List;

@Service
public class RegisterServiceImp implements RegisterService {

    @Autowired
    private RegisterMapper registerMapper;

    @Override
    public List<Register> QueryAll() {
        List<Register> registers = registerMapper.QueryAll();
        return registers;
    }

    @Override
    public Register QueryByRid(int rid) {
        Register register = registerMapper.QueryByRid(rid);
        return register;
    }

    @Override
    public boolean UpdateByRid(Register register) {
        int i = registerMapper.UpdateByRid(register);
        if (i>0){
            System.out.println("修改成功");
            return true;
        }else{
            System.out.println("修改失败");
            return false;
        }
    }

    @Override
    public boolean DeleteByRid(int rid) {
        int i = registerMapper.DeleteByRid(rid);
        if(i>0){
            System.out.println("删除成功");
            return true;
        }else{
            System.out.println("删除失败");
            return false;
        }
    }

    @Override
    public boolean addRegister(Register register) {
        register.setStatus(1);
        //register.setRegisterDate();
        int i = registerMapper.addRegister(register);
        if(i>0){
            System.out.println("插入成功");
            return true;
        }else{
            System.out.println("插入失败");
            return false;
        }
    }

    @Override
    public List<Register> QueryByKey(Register register) {
        List<Register> registers = registerMapper.QueryByKey(register);
        System.out.println(registers);
        return  registers;
    }
}
