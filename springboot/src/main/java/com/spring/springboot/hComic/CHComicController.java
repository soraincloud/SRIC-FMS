package com.spring.springboot.hComic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
@RequestMapping("/h")
public class CHComicController
{
    @Autowired
    CHComicService hComicService;

    @GetMapping("/getHComicList")
    public CHComicResponsePojo getHComicList(CHComicRequestPojo hComicRequest)
    {
        CHComicResponsePojo hComicResponse = new CHComicResponsePojo();
        hComicResponse.setHComicList(hComicService.getHComicList(hComicRequest));
        hComicResponse.setTotal(hComicService.getHComicCount(hComicRequest));
        return hComicResponse;
    }

    @GetMapping("/getHComicById")
    public CHComicData getHComicById(int id)
    {
        return hComicService.getHComicById(id);
    }
}
