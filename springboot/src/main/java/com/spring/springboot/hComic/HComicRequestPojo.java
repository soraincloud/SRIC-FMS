package com.spring.springboot.hComic;

import lombok.Data;

@Data
public class HComicRequestPojo
{
    private String searchInput;
    private String mosaicSelect;
    private String categorySelect;
    private int page;
    private int limitBefore;
    private int limitSize;
}
