package com.spring.springboot.hComicTag;

import com.spring.springboot.response.CResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/h")
public class CHComicTagController
{
    @Autowired
    CHComicTagService hComicTagService;

    @GetMapping("/getHComicTagList")
    public List<CHComicTag> getHComicTagList()
    {
        return hComicTagService.getHComicTagList();
    }

    @PostMapping("/addHComicTag")
    public CResponseCode addHComicTag(@RequestBody CAddHComicTagRequestPojo addHComicTagRequest)
    {
        return hComicTagService.addHComicTag(addHComicTagRequest);
    }
}
