package com.spring.springboot.hComic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * - - - - - - - - - -
 * H Comic 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/h")
public class HComicController
{
    @Autowired
    HComicService hComicService;

    /**
     * 获取 H Comic 分页列表
     * 调用 Service 获取数据和数据数量
     */
    @GetMapping("/getHComicList")
    public HComicResponsePojo getHComicList(HComicRequestPojo hComicRequest)
    {
        HComicResponsePojo hComicResponse = new HComicResponsePojo();
        hComicResponse.setHComicList(hComicService.getHComicList(hComicRequest));
        hComicResponse.setTotal(hComicService.getHComicCount(hComicRequest));
        return hComicResponse;
    }

    /**
     * 通过 id 获取 comic
     */
    @GetMapping("/getHComicById")
    public HComicData getHComicById(int id)
    {
        return hComicService.getHComicById(id);
    }
}
