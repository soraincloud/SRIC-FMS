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

    @Update(value = "UPDATE `data_user` SET USERNAME = #{username} WHERE uuid = #{uuid}")
    int updateUsernameByUuid(@Param("uuid") String uuid, @Param("username") String username);

    @Update(value = "UPDATE `data_user` SET PASSWORD = #{password} WHERE uuid = #{uuid}")
    int updatePasswordByUuid(@Param("uuid") String uuid, @Param("password") String password);

    @Select(value = "SELECT * FROM `data_user` WHERE USERNAME = #{username}")
    User getUserByUsername(@Param("username") String username);

    @Select(value = "SELECT * FROM `data_user` WHERE uuid = #{uuid}")
    User getUserByUuid(@Param("uuid") String uuid);

    @Select(value = "SELECT * FROM `data_user` WHERE MAIL = #{mail}")
    User getUserByMail(@Param("mail") String mail);
}
