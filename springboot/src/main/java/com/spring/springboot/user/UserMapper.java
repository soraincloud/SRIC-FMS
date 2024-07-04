package com.spring.springboot.user;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface UserMapper
{
    @Select(value = "SELECT * FROM `data_user`")
    List<User> getUserList();

    @Update(value = "UPDATE `data_user` SET USERNAME = #{username} WHERE ID = #{id}")
    int updateUsernameById(@Param("id") int id, @Param("username") String username);

    @Update(value = "UPDATE `data_user` SET PASSWORD = #{password} WHERE ID = #{id}")
    int updatePasswordById(@Param("id") int id, @Param("password") String password);

    @Select(value = "SELECT * FROM `data_user` WHERE USERNAME = #{username}")
    User getUserByUsername(@Param("username") String username);

    @Select(value = "SELECT * FROM `data_user` WHERE UID = #{uid}")
    User getUserByUid(@Param("uid") int uid);
}
