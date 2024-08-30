package com.spring.springboot.hComicTag;

import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * - - - - - - - - - -
 * Comic Tag 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/h")
public class HComicTagController
{
    @Autowired
    HComicTagService hComicTagService;

    /**
     * 获取 comic tag 列表
     */
    @GetMapping("/getHComicTagList")
    public List<HComicTag> getHComicTagList()
    {
        return hComicTagService.getHComicTagList();
    }

    /**
     * 添加 comic tag
     */
    @PostMapping("/addHComicTag")
    public ResponseCode addHComicTag(@RequestBody AddHComicTagRequestPojo addHComicTagRequest)
    {
        return hComicTagService.addHComicTag(addHComicTagRequest);
    }
}
