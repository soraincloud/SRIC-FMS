package com.spring.springboot.hComic;

import lombok.Data;

/**
 * - - - - - - - - - -
 * H Comic Request 实体类
 * 获取 H Comic 列表的请求参数
 * - - - - - - - - - -
 */

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
