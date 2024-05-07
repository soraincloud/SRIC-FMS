package com.spring.springboot.hComic;

import lombok.Data;

import java.util.List;

@Data
public class CHComicData
{
    private CHComic hComic;
    private List<String> hComicPages;
}
