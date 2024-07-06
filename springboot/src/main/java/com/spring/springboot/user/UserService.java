package com.spring.springboot.user;

import org.apache.logging.log4j.message.Message;

import java.util.List;

public interface UserService
{
    List<User> getUserList();
    List<User> getUserMessageList();
    boolean updateUsernameById(User user);
    boolean updatePasswordById(User user);
    SignInCode signIn(User user);
    UserMessageResponse getUserByUid(int uid);
    int getCodeByMail(String mail);
}
