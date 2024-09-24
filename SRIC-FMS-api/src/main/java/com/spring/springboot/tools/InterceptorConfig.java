package com.spring.springboot.tools;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 工具类
 * 将本地静态文件映射在 url 上
 */

@Configuration
public class InterceptorConfig implements WebMvcConfigurer //静态资源映射
{
    @Value("${filesPath}") //获取application.properties中的全局变量
    private String filesPath;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/hComic/**").addResourceLocations("file:" + filesPath + "/hComic/");
        registry.addResourceHandler("/hVideo/**").addResourceLocations("file:" + filesPath + "/hVideo/");
        registry.addResourceHandler("/hPicture/**").addResourceLocations("file:" + filesPath + "/hPicture/");
        registry.addResourceHandler("/userAvatar/**").addResourceLocations("file:" + filesPath + "/userAvatar/");
    }
}
