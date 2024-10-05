package com.spring.springboot.user;

import com.spring.springboot.tools.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;

/**
 * - - - - - - - - - -
 * user 服务类
 * - - - - - - - - - -
 */

@Service
public class UserServiceImpl implements UserService
{
    @Autowired
    UserMapper userMapper;

    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    @Autowired
    private MailService mailService;

    /**
     * @author SRIC
     *
     * 获取 user 数据列表
     */
    @Override
    public List<User> getUserList()
    {
        return userMapper.getUserList();
    }

    /**
     * @author SRIC
     *
     * 获取用户信息列表
     * 将用户信息封装为 uuid UID 名称 邮箱 时间
     * 将邮箱内容隐藏
     */
    @Override
    public List<User> getUserMessageList()
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

    /**
     * @author SRIC
     *
     * 根据 uuid 修改 username
     * 若修改数据条数不为 0 则修改成功
     */
    @Override
    public boolean updateUsernameByUuid(User user)
    {
        int updateNum = userMapper.updateUsernameByUuid(user.getUuid(), user.getUsername());
        return updateNum > 0;
    }

    /**
     * @author SRIC
     *
     * 根据 uuid 修改 password
     * 若修改数据条数不为 0 则修改成功
     */
    @Override
    public boolean updatePasswordByUuid(User user)
    {
        int updateNum = userMapper.updatePasswordByUuid(user.getUuid(), user.getPassword());
        return updateNum > 0;
    }

    /**
     * @author SRIC
     *
     * 登录
     * 根据用户名获取用户信息 并进行密码匹配
     * 返回状态码 200成功 404无此用户 400密码错误
     */
    @Override
    public SignInResponsePojo signIn(User user)
    {
        User userSignIn = userMapper.getUserByUsername(user.getUsername()); //通过用户名获取用户信息
        SignInResponsePojo signInResponse = new SignInResponsePojo();
        if(userSignIn == null)
        {
            signInResponse.setCode(404); //查无此用户
        }
        else
        {
            if(userSignIn.getPassword().equals(user.getPassword())) //用户名密码匹配
            {
                signInResponse.setCode(200);
                signInResponse.setUuid(userSignIn.getUuid());
                signInResponse.setUid(userSignIn.getUid());
                signInResponse.setStatus(userSignIn.getStatus());
            }
            else
            {
                signInResponse.setCode(400); //密码错误
            }
        }
        return signInResponse;
    }

    /**
     * @author SRIC
     *
     * 根据 uuid 获取 用户信息
     * 仅获取部分展示信息
     */
    @Override
    public UserMessageResponsePojo getUserByUuid(String uuid)
    {
        User user = userMapper.getUserByUuid(uuid);
        UserMessageResponsePojo userMessage = new UserMessageResponsePojo();
        userMessage.setUid(user.getUid());
        userMessage.setUsername(user.getUsername());
        userMessage.setAvatar(user.getAvatar());
        userMessage.setMark(user.getMark());
        return userMessage;
    }

    /**
     * @author SRIC
     *
     * 获取验证码
     * 检查邮箱是否被注册
     * 若未被注册
     * 生成一个随机的六位数验证码
     * 并且在 redis 中添加一条记录 包含 (邮箱,验证码)
     * 并且调用邮件服务类 向目标邮箱发送一封包含验证码的邮件
     */
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

    /**
     * @author SRIC
     *
     * 注册
     * 查找用户名是否已经被注册
     * 若未被注册
     * 从 redis 中通过邮箱查找验证码并且与用户输入的验证码进行匹配
     * 返回状态码 200成功 400已被注册 401验证码错误
     */
    @Override
    public int signUp(SignUpRequestPojo signUpRequest)
    {
        User userByUsername = userMapper.getUserByUsername(signUpRequest.getUsername()); //通过输入的用户名查找是否有用户
        if(userByUsername != null) //用户名已被注册
        {
            return 400;
        }
        String code = redisTemplate.opsForValue().get(signUpRequest.getMail()); //通过邮箱获取验证码
        if(code.equals(signUpRequest.getCode())) //验证码正确
        {
            userMapper.insertUser(signUpRequest);
            return 200;
        }
        return 401; //验证码错误
    }
}
