package com.spring.springboot.hVideoTag;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.spring.springboot.response.CResponseCode;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/h")
public class CHVideoTagController
{
    @Autowired
    CHVideoTagService hVideoTagService;

    @GetMapping("/getHVideoTagList")
    public List<CHVideoTag> getHVideoTagList()
    {
        return hVideoTagService.getHVideoTagList();
    }

    @PostMapping("/addHVideoTag")
    public CResponseCode addHVideoTag(@RequestBody CAddHVideoTagRequestPojo addHVideoTagRequest)
    {
        return hVideoTagService.addHVideoTag(addHVideoTagRequest);
    }
}
