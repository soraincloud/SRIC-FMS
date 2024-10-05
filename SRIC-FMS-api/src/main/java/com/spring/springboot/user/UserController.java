package com.spring.springboot.user;

import cn.dev33.satoken.stp.SaTokenInfo;
import cn.dev33.satoken.stp.StpUtil;
import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * - - - - - - - - - -
 * user 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/user")
public class UserController
{
    @Autowired
    UserService userService;

    /**
     * @author SRIC
     *
     * 登录
     * 若登录成功 在 sa token 中通过 uuid 注册用户信息
     * 返回 token
     */
    @PostMapping("/signIn")
    public SignInResponsePojo signIn(@RequestBody User user)
    {
        SignInResponsePojo signInResponse = userService.signIn(user);
        if(signInResponse.getCode() == 200) //登录成功
        {
            StpUtil.login(signInResponse.getUuid()); //通过uuid登录
            SaTokenInfo tokenInfo = StpUtil.getTokenInfo();
            signInResponse.setToken(tokenInfo.tokenValue); //添加token
        }
        return signInResponse;
    }

    /**
     * @author SRIC
     *
     * 获取用户信息
     * 通过传入的 uuid 与 请求头中的 token 数据 获取用户信息
     * 通过 token 判断用户登录状态 并做出对应操作
     */
    @GetMapping("/getUserMessage")
    public UserMessageResponsePojo getUserMessage(@RequestParam String uuid, @RequestHeader("Authorization") String tokenValue)
    {
        UserMessageResponsePojo userMessage = userService.getUserByUuid(uuid);
        if (tokenValue == null) //未登录 无token
        {
            userMessage.setSignCode(400);
        }
        else //登录过 有token
        {
            Object loginId = StpUtil.getLoginIdByToken(tokenValue);
            if(loginId == null) //token过期
            {
                userMessage.setSignCode(500);
            }
            else //正常的登录状态
            {
                userMessage.setSignCode(200);
            }
        }
        return userMessage;
    }

    /**
     * @author SRIC
     *
     * 通过传入的电子邮箱 发送动态验证码
     */
    @GetMapping("/getCodeByMail")
    public ResponseCode getCodeByMail(@RequestParam String mail)
    {
        ResponseCode responseCode = new ResponseCode();
        responseCode.setCode(userService.getCodeByMail(mail));
        return responseCode;
    }

    /**
     * @author SRIC
     *
     * 注册
     */
    @PostMapping("/signUp")
    public ResponseCode signIn(@RequestBody SignUpRequestPojo signUpRequest)
    {
        ResponseCode responseCode = new ResponseCode();
        responseCode.setCode(userService.signUp(signUpRequest));
        return responseCode;
    }
}
