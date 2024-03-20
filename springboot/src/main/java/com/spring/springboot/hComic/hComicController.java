package com.spring.springboot.hComic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
@RequestMapping("/h")
public class hComicController
{
    @Autowired
    hComicService hComicService;

    @GetMapping("/getHComicList")
    public hComicResponsePojo getHComicList(hComicRequestPojo hComicRequest)
    {
        hComicResponsePojo hComicResponse = new hComicResponsePojo();
        hComicResponse.setHComicList(hComicService.getHComicList(hComicRequest));
        hComicResponse.setTotal(hComicService.getHComicCount());
        return hComicResponse;
    }
}
