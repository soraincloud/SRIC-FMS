package com.spring.springboot.hComic;

import lombok.Data;

import java.util.List;

@Data
public class HComicData
{
    private HComic hComic;
    private List<String> hComicPages;
}
