package com.spring.springboot.hVideo;

import lombok.Data;

@Data
public class hVideoRequestPojo
{
    private String searchInput;
    private String mosaicSelect;
    private String categorySelect;
    private int page;
    private int limitBefore;
    private int limitSize;
}
