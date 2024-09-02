package com.spring.springboot.hVideo;

import com.spring.springboot.tools.StaticResourceHttpRequestHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import java.io.File;
import java.nio.charset.StandardCharsets;

/**
 * - - - - - - - - - -
 * video 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/h")
public class HVideoController
{
    @Value("${filesPath}") //获取application.properties中的全局变量
    private String filesPath;

    @Autowired
    HVideoService hVideoService;
    @Autowired
    StaticResourceHttpRequestHandler StaticResourceHttpRequestHandler;

    /**
     * @author SRIC
     *
     * 获取 video 列表
     * 获取分页列表并且获取总数
     */
    @GetMapping("/getHVideoList")
    public HVideoResponsePojo getHVideoList(HVideoRequestPojo hVideoRequest)
    {
        HVideoResponsePojo hVideoResponse = new HVideoResponsePojo();
        hVideoResponse.setHVideoList(hVideoService.getHVideoList(hVideoRequest));
        hVideoResponse.setTotal(hVideoService.getHVideoCount(hVideoRequest));
        return hVideoResponse;
    }

    /**
     * @author SRIC
     *
     * 通过 id 获取 video
     */
    @GetMapping("/getHVideoById")
    public HVideo getHVideoById(int id)
    {
        return hVideoService.getHVideoById(id);
    }
}
