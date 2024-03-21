package com.spring.springboot.hComicTag;

import com.spring.springboot.response.responseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/h")
public class hComicTagController
{
    @Autowired
    hComicTagService hComicTagService;

    @GetMapping("/getHComicTagList")
    public List<hComicTag> getHComicTagList()
    {
        return hComicTagService.getHComicTagList();
    }

    @PostMapping("/addHComicTag")
    public responseCode addHComicTag(@RequestBody addHComicTagRequestPojo addHComicTagRequest)
    {
        return hComicTagService.addHComicTag(addHComicTagRequest);
    }
}
