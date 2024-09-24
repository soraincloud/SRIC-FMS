package com.spring.springboot.hComic;

import lombok.Data;

import java.util.List;

/**
 * - - - - - - - - - -
 * H Comic Response 实体类
 * 返回查询到的 comic 列表数据和数据条数
 * - - - - - - - - - -
 */

@Data
public class HComicResponsePojo
{
    private List<HComic> hComicList;
    private int total;
}
