package com.spring.springboot.hComic;

import lombok.Data;

import java.util.List;

@Data
public class hComicData
{
    private hComic hComic;
    private List<String> hComicPages;
}
