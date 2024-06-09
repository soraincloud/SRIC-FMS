package com.spring.springboot.user;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface UserMapper
{
    @Select(value = "SELECT * FROM `data_user`")
    List<User> getUserList();
}
