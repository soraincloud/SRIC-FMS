package com.spring.springboot.hComic;

import java.util.List;

public interface HComicService
{
    List<HComic> getHComicList(HComicRequestPojo hComicRequestPojo);
    HComicData getHComicById(int id);
    int getHComicCount(HComicRequestPojo pojo);
}
