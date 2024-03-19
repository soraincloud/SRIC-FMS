package com.spring.springboot.hVideo;

import com.spring.springboot.tools.StaticResourceHttpRequestHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/h")
public class hVideoController
{
    @Value("${filesPath}") //获取application.properties中的全局变量
    private String filesPath;

    @Autowired
    hVideoService hVideoService;
    @Autowired
    StaticResourceHttpRequestHandler StaticResourceHttpRequestHandler;

    @GetMapping("/getHVideoList")
    public hVideoResponsePojo getHVideoList(hVideoRequestPojo hVideoRequest)
    {
        hVideoResponsePojo hVideoResponse = new hVideoResponsePojo();
        hVideoResponse.setHVideoList(hVideoService.getHVideoList(hVideoRequest));
        hVideoResponse.setTotal(hVideoService.getHVideoCount());
        return hVideoResponse;
    }

    @GetMapping("/playHVideo")
    public void playHVideo(int video, HttpServletRequest request, HttpServletResponse response)
    {


        try
        {
            String path = filesPath + "/video/" + hVideoService.getFilenameById(video);
            File file = new File(path);
            if(file.exists())
            {
                request.setAttribute(StaticResourceHttpRequestHandler.ATTR_FILE, path);
                StaticResourceHttpRequestHandler.handleRequest(request, response);
            }
            else
            {
                response.setStatus(HttpServletResponse.SC_NOT_FOUND);
                response.setCharacterEncoding(StandardCharsets.UTF_8.toString());
            }
        }
        catch(Exception e)
        {

        }
    }

    @GetMapping("/getHVideoById")
    public hVideo getHVideoById(int id)
    {
        return hVideoService.getHVideoById(id);
    }
}
