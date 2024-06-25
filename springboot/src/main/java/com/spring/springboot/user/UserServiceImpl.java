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
    public List<User> getUserMessageList() //将用户信息封装为 id 名称 邮箱 时间
    {
        List<User> userList = userMapper.getUserList();
        for(int i = 0;i < userList.size();i++)
        {
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

    @Override
    public SignInCode signIn(User user)
    {
        User userSignIn = userMapper.getUserByUsername(user.getUsername()); //通过用户名获取用户信息
        SignInCode signInCode = new SignInCode();
        if(userSignIn == null)
        {
            signInCode.setCode(404); //查无此用户
        }
        else
        {
            if(userSignIn.getPassword().equals(user.getPassword()))
            {
                signInCode.setCode(200); //用户名密码匹配
                signInCode.setId(userSignIn.getId());
            }
            else
            {
                signInCode.setCode(400); //密码错误
            }
        }
        return signInCode;
    }
}
