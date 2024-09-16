package com.spring.springboot.tools;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * 工具类
 * 获取当前时间，格式化为 yyyy-MM-dd HH:mm:ss
 */

public class GetTime
{
    public String getCurrentTime()
    {
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        return now.format(formatter);
    }
}
