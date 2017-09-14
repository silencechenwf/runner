package com.chinasofti.dao;

import com.chinasofti.pojo.Register;

import java.util.List;

public interface RegisterMapper {
    int deleteByPrimaryKey(Integer registerId);

    int insert(Register record);

    int insertSelective(Register record);

    Register selectByPrimaryKey(Integer registerId);

    int updateByPrimaryKeySelective(Register record);

    int updateByPrimaryKey(Register record);

    Register loginByUserNameAndUserPass(Register register);

    List<Register> checkUserName(String userName);

    Register checkEmail(String email);
}