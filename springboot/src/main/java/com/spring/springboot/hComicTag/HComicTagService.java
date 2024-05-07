package com.spring.springboot.hComicTag;

import com.spring.springboot.response.ResponseCode;

import java.util.List;

public interface HComicTagService
{
    List<HComicTag> getHComicTagList();
    ResponseCode addHComicTag(AddHComicTagRequestPojo addHComicTagRequest);
}
