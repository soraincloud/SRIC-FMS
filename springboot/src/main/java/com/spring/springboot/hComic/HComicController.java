package com.spring.springboot.hComic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
@RequestMapping("/h")
public class HComicController
{
    @Autowired
    HComicService hComicService;

    @GetMapping("/getHComicList")
    public HComicResponsePojo getHComicList(HComicRequestPojo hComicRequest)
    {
        HComicResponsePojo hComicResponse = new HComicResponsePojo();
        hComicResponse.setHComicList(hComicService.getHComicList(hComicRequest));
        hComicResponse.setTotal(hComicService.getHComicCount(hComicRequest));
        return hComicResponse;
    }

    @GetMapping("/getHComicById")
    public HComicData getHComicById(int id)
    {
        return hComicService.getHComicById(id);
    }
}
