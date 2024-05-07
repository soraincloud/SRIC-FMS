package com.spring.springboot.hComic;

import com.spring.springboot.hComicTag.CHComicTag;
import lombok.Data;

import java.util.List;

@Data
public class CHComic
{
    private int id;
    private String name;
    private String fileName;
    private int pages;
    private int mosaic;
    private int category;
    private List<CHComicTag> hComicTagList;
}
