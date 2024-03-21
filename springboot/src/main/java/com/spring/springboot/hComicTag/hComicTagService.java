package com.spring.springboot.hComicTag;

import com.spring.springboot.hComicTag.addHComicTagRequestPojo;
import com.spring.springboot.response.responseCode;

import java.util.List;

public interface hComicTagService
{
    List<hComicTag> getHComicTagList();
    responseCode addHComicTag(addHComicTagRequestPojo addHComicTagRequest);
}
