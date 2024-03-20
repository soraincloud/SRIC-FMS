package com.spring.springboot.hComic;

import java.util.List;

public interface hComicService
{
    List<hComic> getHComicList(hComicRequestPojo hComicRequestPojo);
    hComic getHComicById(int id);
    int getHComicCount();
}
