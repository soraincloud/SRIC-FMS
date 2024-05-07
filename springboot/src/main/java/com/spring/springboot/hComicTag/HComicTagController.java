package com.spring.springboot.hComicTag;

import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/h")
public class HComicTagController
{
    @Autowired
    HComicTagService hComicTagService;

    @GetMapping("/getHComicTagList")
    public List<HComicTag> getHComicTagList()
    {
        return hComicTagService.getHComicTagList();
    }

    @PostMapping("/addHComicTag")
    public ResponseCode addHComicTag(@RequestBody AddHComicTagRequestPojo addHComicTagRequest)
    {
        return hComicTagService.addHComicTag(addHComicTagRequest);
    }
}
