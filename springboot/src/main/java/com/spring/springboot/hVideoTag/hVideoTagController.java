package com.spring.springboot.hVideoTag;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.spring.springboot.response.responseCode;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/h")
public class hVideoTagController
{
    @Autowired
    hVideoTagService hVideoTagService;

    @GetMapping("/getHVideoTagList")
    public List<hVideoTag> getHVideoTagList()
    {
        return hVideoTagService.getHVideoTagList();
    }

    @PostMapping("/addHVideoTag")
    public responseCode addHVideoTag(@RequestBody addHVideoTagRequestPojo addHVideoTagRequest)
    {
        return hVideoTagService.addHVideoTag(addHVideoTagRequest);
    }
}
