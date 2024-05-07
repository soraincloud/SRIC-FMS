package com.spring.springboot.hComic;

import java.util.List;

public interface CHComicService
{
    List<CHComic> getHComicList(CHComicRequestPojo hComicRequestPojo);
    CHComicData getHComicById(int id);
    int getHComicCount(CHComicRequestPojo pojo);
}
