package com.spring.springboot.hVideo;

import lombok.Data;

@Data
public class HVideoRequestPojo
{
    private String searchInput;
    private String mosaicSelect;
    private String categorySelect;
    private int page;
    private int limitBefore;
    private int limitSize;
}
