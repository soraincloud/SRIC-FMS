package com.spring.springboot.hComic;

import lombok.Data;

import java.util.List;

@Data
public class hComicResponsePojo
{
    private List<hComic> hComicList;
    private int total;
}
