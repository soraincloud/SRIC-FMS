package com.spring.springboot.user;

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
}
