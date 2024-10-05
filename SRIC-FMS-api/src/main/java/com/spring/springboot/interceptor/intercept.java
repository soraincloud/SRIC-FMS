package com.spring.springboot.interceptor;

import cn.dev33.satoken.stp.StpUtil;
import com.spring.springboot.tools.EditFile;
import com.spring.springboot.tools.GetTime;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
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
        LogPojo log = new LogPojo();
        log.setCurrentTime(new GetTime().getCurrentTime());
        log.setClientIp(getClientIp(request));
        log.setRequestUrl(request.getRequestURI());
        String tokenValue = request.getHeader("Authorization");
        if (tokenValue == null) //未登录 无token
        {
            log.setState("未登录");
            log.setStateCode(400);
        }
        else //登录过 有token
        {
            Object loginId = StpUtil.getLoginIdByToken(tokenValue);
            if(loginId == null) //token过期
            {
                log.setState("token过期");
                log.setStateCode(500);
            }
            else //正常的登录状态
            {
                log.setState("已登录");
                log.setStateCode(200);
            }
        }
        showLogs(log);
        return true;
    }

    /**
     * 获取客户端 IP 地址
     */
    private String getClientIp(HttpServletRequest request) {
        String ip = request.getHeader("X-Forwarded-For"); // 从代理服务器获取IP
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.isEmpty() || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr(); // 最后从request中获取IP
        }
        return ip;
    }

    /**
     * 显示请求 log 信息
     */
    private void showLogs(LogPojo log)
    {
        System.out.println("\n"
                + "- - - - -  Q w Q  - - - - -"
                + "\n"
                + "请求时间 : " + log.getCurrentTime()
                + "\n"
                + "请求IP : " + log.getClientIp()
                + "\n"
                + "请求URL : " + log.getRequestUrl()
                + "\n"
                + "状态 : " + log.getState()
        );
    }
}
