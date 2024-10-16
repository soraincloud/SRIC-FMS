package com.spring.springboot.user;

import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * - - - - - - - - - -
 * user 控制类
 * 单独的 manage 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/userManage")
public class UserManageController
{
    @Autowired
    UserService userService;

    /**
     * @author SRIC
     *
     * 获取 user 数据列表
     */
    @GetMapping("/getUserMessageList")
    public UserManageListResponsePojo getUserMessageList(UserManageListRequestPojo userManageListRequest)
    {
        UserManageListResponsePojo userManageListResponse = new UserManageListResponsePojo();
        userManageListResponse.setUserList(userService.getUserMessageList(userManageListRequest));
        userManageListResponse.setTotal(userService.getUserMessageCount());
        return userManageListResponse;
    }

    /**
     * @author SRIC
     *
     * 根据 uuid 修改 用户名
     * 返回状态码 200成功 400失败
     */
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

    /**
     * @author SRIC
     *
     * 根据 uuid 修改 密码
     * 返回状态码 200成功 400失败
     */
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
}
