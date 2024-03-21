package com.spring.springboot.hVideoTag;

import com.spring.springboot.response.responseCode;

import java.util.List;

public interface hVideoTagService
{
    List<hVideoTag> getHVideoTagList();
    responseCode addHVideoTag(addHVideoTagRequestPojo addHVideoTagRequest);
}
