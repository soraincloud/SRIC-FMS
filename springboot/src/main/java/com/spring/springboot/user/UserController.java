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

    @PostMapping("/updateUsernameByUid")
    public ResponseCode updateUsernameByUid(@RequestBody User user)
    {
        boolean isSuccess =  userService.updateUsernameByUid(user);
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

    @PostMapping("/updatePasswordByUid")
    public ResponseCode updatePasswordByUid(@RequestBody User user)
    {
        boolean isSuccess = userService.updatePasswordByUid(user);
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
        SignInResponse signInResponse = new SignInResponse();
        SignInCode signInCode = userService.signIn(user);
        if(signInCode.getCode() == 200) //登录成功
        {
            StpUtil.login(signInCode.getId()); //通过id登录
            SaTokenInfo tokenInfo = StpUtil.getTokenInfo();
            signInResponse.setToken(tokenInfo.tokenValue); //添加token
            signInResponse.setUid(signInCode.getUid()); //添加uid
            signInResponse.setUsername(signInCode.getUsername()); //添加用户名
            signInResponse.setAvatar(signInCode.getAvatar()); //添加头像
        }
        signInResponse.setCode(signInCode.getCode());
        return signInResponse;
    }

    @GetMapping("/getUserMessage")
    public UserMessageResponse getUserMessage(@RequestParam int uid,@RequestHeader("Authorization") String tokenValue)
    {
        UserMessageResponse userMessage = userService.getUserByUid(uid);
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
