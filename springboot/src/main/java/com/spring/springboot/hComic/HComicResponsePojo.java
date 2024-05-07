package com.spring.springboot.hComic;

import lombok.Data;

import java.util.List;

@Data
public class HComicResponsePojo
{
    private List<HComic> hComicList;
    private int total;
}
