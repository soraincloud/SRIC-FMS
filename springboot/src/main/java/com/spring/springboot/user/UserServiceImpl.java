package com.spring.springboot.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService
{
    @Autowired
    UserMapper userMapper;

    @Override
    public List<User> getUserList()
    {
        return userMapper.getUserList();
    }

    @Override
    public List<User> getUserMessageList() //将用户信息封装为 名称 邮箱 时间
    {
        List<User> userList = userMapper.getUserList();
        for(int i = 0;i < userList.size();i++)
        {
            userList.get(i).setId(0);
            userList.get(i).setPassword("");
            String mail = userList.get(i).getMail();
            int length = mail.length();
            String markEmail = "";
            markEmail += mail.substring(0,2);
            markEmail += "****";
            markEmail += mail.substring(length - 12,length);
            userList.get(i).setMail(markEmail);
        }
        return userList;
    }

    @Override
    public boolean updateUsernameById(User user)
    {
        int updateNum = userMapper.updateUsernameById(user.getId(), user.getUsername());
        return updateNum > 0;
    }

    @Override
    public boolean updatePasswordById(User user)
    {
        int updateNum = userMapper.updatePasswordById(user.getId(), user.getPassword());
        return updateNum > 0;
    }
}
