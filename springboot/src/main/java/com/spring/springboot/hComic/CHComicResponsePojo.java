package com.spring.springboot.hComic;

import lombok.Data;

import java.util.List;

@Data
public class CHComicResponsePojo
{
    private List<CHComic> hComicList;
    private int total;
}
