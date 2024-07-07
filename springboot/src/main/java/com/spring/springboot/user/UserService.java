package com.spring.springboot.user;

import org.apache.logging.log4j.message.Message;

import java.util.List;

public interface UserService
{
    List<User> getUserList();
    List<User> getUserMessageList();
    boolean updateUsernameByUuid(User user);
    boolean updatePasswordByUuid(User user);
    SignInResponse signIn(User user);
    UserMessageResponse getUserByUuid(String uuid);
    int getCodeByMail(String mail);
    int signUp(SignUpRequest signUpRequest);
}
