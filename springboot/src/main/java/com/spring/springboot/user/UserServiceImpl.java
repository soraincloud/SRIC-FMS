package com.spring.springboot.user;

import com.spring.springboot.tools.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.mail.MailSender;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;

@Service
public class UserServiceImpl implements UserService
{
    @Autowired
    UserMapper userMapper;

    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    @Autowired
    private MailService mailService;

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
            userList.get(i).setId("");
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
    public boolean updateUsernameByUid(User user)
    {
        int updateNum = userMapper.updateUsernameByUid(user.getUid(), user.getUsername());
        return updateNum > 0;
    }

    @Override
    public boolean updatePasswordByUid(User user)
    {
        int updateNum = userMapper.updatePasswordByUid(user.getUid(), user.getPassword());
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
                signInCode.setUid(userSignIn.getUid());
                signInCode.setUsername(userSignIn.getUsername());
                signInCode.setAvatar(userSignIn.getAvatar());
            }
            else
            {
                signInCode.setCode(400); //密码错误
            }
        }
        return signInCode;
    }

    @Override
    public UserMessageResponse getUserByUid(int uid)
    {
        User user = userMapper.getUserByUid(uid);
        UserMessageResponse userMessage = new UserMessageResponse();
        userMessage.setUid(user.getUid());
        userMessage.setUsername(user.getUsername());
        userMessage.setAvatar(user.getAvatar());
        return userMessage;
    }

    @Override
    public int getCodeByMail(String mail)
    {
        User user = userMapper.getUserByMail(mail);
        if(user != null) //邮箱已被注册
        {
            return 400;
        }
        String code = String.valueOf(new Random().nextInt(900000) + 100000); //生成六位数验证码
        redisTemplate.opsForValue().set(mail, code, 10, TimeUnit.MINUTES); //在redis中添加记录 保持十分钟
        System.out.println("邮箱 : " + mail);
        System.out.println("验证码 : " + code);
        String subject = "SRIC-FMS: E-mail verification";
        String text = "Here is your verification code:\n\n" + code + "\n\n\n\n\n" + "SRIC-FMS team";
        mailService.sendEmail(mail,subject,text);
        return 200;
    }

    @Override
    public int signUp(SignUpRequest signUpRequest)
    {
        User userByUsername = userMapper.getUserByUsername(signUpRequest.getUsername()); //通过输入的用户名查找是否有用户
        if(userByUsername != null) //用户名已被注册
        {
            return 400;
        }
        String code = redisTemplate.opsForValue().get(signUpRequest.getMail()); //通过邮箱获取验证码
        if(code.equals(signUpRequest.getCode()))
        {
            
            return 200;
        }
        return 401;
    }
}
