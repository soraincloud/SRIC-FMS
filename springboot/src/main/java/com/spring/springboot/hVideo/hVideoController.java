package com.spring.springboot.hVideo;

import com.spring.springboot.tools.StaticResourceHttpRequestHandler;
import org.springframework.beans.factory.annotation.Autowired;
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
    @Autowired
    hVideoService hVideoService;
    @Autowired
    StaticResourceHttpRequestHandler StaticResourceHttpRequestHandler;

    @GetMapping("/getHVideoList")
    public List<hVideo> getHVideoList(hVideoSearchRequestPojo hVideoSearchRequestPojo)
    {
        return hVideoService.getHVideoList(hVideoSearchRequestPojo);
    }

    @GetMapping("/playHVideo")
    public void playHVideo(int video, HttpServletRequest request, HttpServletResponse response)
    {
        try
        {
            String path = "D:/OneDrive/SRIC-FMS-H-FILES/video/" + hVideoService.getFilenameById(video);
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
