package com.spring.springboot.hVideoTag;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.spring.springboot.response.ResponseCode;

import java.util.List;

/**
 * - - - - - - - - - -
 * video tag 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/h")
public class HVideoTagController
{
    @Autowired
    HVideoTagService hVideoTagService;

    /**
     * @author SRIC
     *
     * 获取 video tag 列表
     */
    @GetMapping("/getHVideoTagList")
    public List<HVideoTag> getHVideoTagList()
    {
        return hVideoTagService.getHVideoTagList();
    }

    /**
     * @author SRIC
     *
     * 添加 video tag
     */
    @PostMapping("/addHVideoTag")
    public ResponseCode addHVideoTag(@RequestBody AddHVideoTagRequestPojo addHVideoTagRequest)
    {
        return hVideoTagService.addHVideoTag(addHVideoTagRequest);
    }
}
