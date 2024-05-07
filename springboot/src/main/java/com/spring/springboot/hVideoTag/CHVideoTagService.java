package com.spring.springboot.hVideoTag;

import com.spring.springboot.response.CResponseCode;

import java.util.List;

public interface CHVideoTagService
{
    List<CHVideoTag> getHVideoTagList();
    CResponseCode addHVideoTag(CAddHVideoTagRequestPojo addHVideoTagRequest);
}
