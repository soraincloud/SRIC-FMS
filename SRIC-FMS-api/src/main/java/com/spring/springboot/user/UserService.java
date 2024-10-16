package com.spring.springboot.user;

import java.util.List;

public interface UserService
{
    List<User> getUserList();
    List<User> getUserMessageList(UserManageListRequestPojo userManageListRequest);
    int getUserMessageCount();
    boolean updateUsernameByUuid(User user);
    boolean updatePasswordByUuid(User user);
    SignInResponsePojo signIn(User user);
    UserMessageResponsePojo getUserByUuid(String uuid);
    int getCodeByMail(String mail);
    int signUp(SignUpRequestPojo signUpRequest);
}
