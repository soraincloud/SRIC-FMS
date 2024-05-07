package com.spring.springboot.hComic;

import com.spring.springboot.hComicTag.HComicTag;
import lombok.Data;

import java.util.List;

@Data
public class HComic
{
    private int id;
    private String name;
    private String fileName;
    private int pages;
    private int mosaic;
    private int category;
    private List<HComicTag> hComicTagList;
}
