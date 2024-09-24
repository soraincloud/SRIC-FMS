package com.spring.springboot.hVideoTag;

import com.spring.springboot.response.ResponseCode;

import java.util.List;

public interface HVideoTagService
{
    List<HVideoTag> getHVideoTagList();
    ResponseCode addHVideoTag(AddHVideoTagRequestPojo addHVideoTagRequest);
}
