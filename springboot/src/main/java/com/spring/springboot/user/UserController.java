package com.spring.springboot.user;

import cn.dev33.satoken.stp.SaTokenInfo;
import cn.dev33.satoken.stp.StpUtil;
import com.spring.springboot.response.ResponseCode;
import com.spring.springboot.response.SignInResponse;
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

    @PostMapping("/updateUsernameById")
    public ResponseCode updateUsernameById(@RequestBody User user)
    {
        boolean isSuccess =  userService.updateUsernameById(user);
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

    @PostMapping("/updatePasswordById")
    public ResponseCode updatePasswordById(@RequestBody User user)
    {
        boolean isSuccess = userService.updatePasswordById(user);
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
        if(signInCode.getCode() == 200)
        {
            StpUtil.login(signInCode.getId());
        }
        SaTokenInfo tokenInfo = StpUtil.getTokenInfo();
        signInResponse.setCode(signInCode.getCode());
        signInResponse.setToken(tokenInfo.tokenValue);
        return signInResponse;
    }
}
