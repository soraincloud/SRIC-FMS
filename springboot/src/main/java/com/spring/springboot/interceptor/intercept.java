package com.spring.springboot.interceptor;

import cn.dev33.satoken.stp.StpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

/**
 * 请求拦截器
 */

@Component
public class intercept implements HandlerInterceptor
{
    /**
     * @author SRIC
     *
     * 拦截每一次请求
     * 记录请求 url
     * 判断 登录 状态和 token 状态
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,Object handler) throws Exception
    {
        String requestUrl = request.getRequestURI();
        System.out.println("\n");
        System.out.println("- - - - -  Q w Q  - - - - -");
        System.out.println("请求URL : " + requestUrl);
        String tokenValue = request.getHeader("Authorization");
        if (tokenValue == null) //未登录 无token
        {
            System.out.println("状态 : 未登录");
            return true;
        }
        else //登录过 有token
        {
            Object loginId = StpUtil.getLoginIdByToken(tokenValue);
            if(loginId == null) //token过期
            {
                System.out.println("状态 : token过期");
                return true;
            }
            else //正常的登录状态
            {
                System.out.println("状态 : 已登录");
                return true;
            }
        }
    }
}
