package com.spring.springboot.hVideo;

import lombok.Data;

/**
 * - - - - - - - - - -
 * video request 实体类
 * 用于获取 video 信息的接参和查询
 * - - - - - - - - - -
 */

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
