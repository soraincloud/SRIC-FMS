package com.spring.springboot.hVideoTag;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.spring.springboot.response.ResponseCode;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/h")
public class HVideoTagController
{
    @Autowired
    HVideoTagService hVideoTagService;

    @GetMapping("/getHVideoTagList")
    public List<HVideoTag> getHVideoTagList()
    {
        return hVideoTagService.getHVideoTagList();
    }

    @PostMapping("/addHVideoTag")
    public ResponseCode addHVideoTag(@RequestBody AddHVideoTagRequestPojo addHVideoTagRequest)
    {
        return hVideoTagService.addHVideoTag(addHVideoTagRequest);
    }
}
