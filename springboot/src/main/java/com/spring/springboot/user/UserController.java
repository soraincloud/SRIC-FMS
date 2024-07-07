package com.spring.springboot.user;

import cn.dev33.satoken.stp.SaTokenInfo;
import cn.dev33.satoken.stp.StpUtil;
import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/user")
public class UserController
{
    @Autowired
    UserService userService;

    @GetMapping("/getUserMessageList")
    public List<User> getUserMessageList()
    {
        return userService.getUserMessageList();
    }

    @PostMapping("/updateUsernameByUuid")
    public ResponseCode updateUsernameByUuid(@RequestBody User user)
    {
        boolean isSuccess =  userService.updateUsernameByUuid(user);
        ResponseCode responseCode = new ResponseCode();
        if(isSuccess)
        {
            responseCode.setCode(200);
        }
        else
        {
            responseCode.setCode(400);
        }
        return responseCode;
    }

    @PostMapping("/updatePasswordByUuid")
    public ResponseCode updatePasswordByUuid(@RequestBody User user)
    {
        boolean isSuccess = userService.updatePasswordByUuid(user);
        ResponseCode responseCode = new ResponseCode();
        if(isSuccess)
        {
            responseCode.setCode(200);
        }
        else
        {
            responseCode.setCode(400);
        }
        return responseCode;
    }

    @PostMapping("/signIn")
    public SignInResponse signIn(@RequestBody User user)
    {
        SignInResponse signInResponse = userService.signIn(user);
        if(signInResponse.getCode() == 200) //登录成功
        {
            StpUtil.login(signInResponse.getUuid()); //通过uuid登录
            SaTokenInfo tokenInfo = StpUtil.getTokenInfo();
            signInResponse.setToken(tokenInfo.tokenValue); //添加token
        }
        return signInResponse;
    }

    @GetMapping("/getUserMessage")
    public UserMessageResponse getUserMessage(@RequestParam String uuid,@RequestHeader("Authorization") String tokenValue)
    {
        UserMessageResponse userMessage = userService.getUserByUuid(uuid);
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

    @GetMapping("/getCodeByMail")
    public ResponseCode getCodeByMail(@RequestParam String mail)
    {
        ResponseCode responseCode = new ResponseCode();
        responseCode.setCode(userService.getCodeByMail(mail));
        return responseCode;
    }

    @PostMapping("/signUp")
    public ResponseCode signIn(@RequestBody SignUpRequest signUpRequest)
    {
        ResponseCode responseCode = new ResponseCode();

        return responseCode;
    }
}
