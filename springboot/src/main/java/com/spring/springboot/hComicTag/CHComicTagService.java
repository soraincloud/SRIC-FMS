package com.spring.springboot.hComicTag;

import com.spring.springboot.response.CResponseCode;

import java.util.List;

public interface CHComicTagService
{
    List<CHComicTag> getHComicTagList();
    CResponseCode addHComicTag(CAddHComicTagRequestPojo addHComicTagRequest);
}
