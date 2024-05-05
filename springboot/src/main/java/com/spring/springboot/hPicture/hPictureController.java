package com.spring.springboot.hPicture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/h")
public class hPictureController
{
    @Autowired
    hPictureService hPictureService;

    @GetMapping("getHPictureRandomList")
    public List<hPicture> getHPictureRandomList()
    {
        return hPictureService.getHPictureRandomList();
    }
}
