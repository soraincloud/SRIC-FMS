package com.spring.springboot.hVideo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/h")
public class hVideoController
{
    @Autowired
    hVideoService hVideoService;

    @GetMapping("/getHVideoList")
    public List<hVideo> getHVideoList()
    {
        return hVideoService.getHVideoList();
    }
}
