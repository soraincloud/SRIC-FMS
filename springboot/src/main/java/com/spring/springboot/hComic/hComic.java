package com.spring.springboot.hComic;

import com.spring.springboot.hComicTag.hComicTag;
import lombok.Data;

import java.util.List;

@Data
public class hComic
{
    private int id;
    private String name;
    private String fileName;
    private int pages;
    private int mosaic;
    private int category;
    private List<hComicTag> hComicTagList;
    private String comicCover;
}
