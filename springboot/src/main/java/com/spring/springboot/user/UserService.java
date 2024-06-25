package com.spring.springboot.user;

import java.util.List;

public interface UserService
{
    List<User> getUserList();
    List<User> getUserMessageList();
    boolean updateUsernameById(User user);
    boolean updatePasswordById(User user);
    SignInCode signIn(User user);
}
