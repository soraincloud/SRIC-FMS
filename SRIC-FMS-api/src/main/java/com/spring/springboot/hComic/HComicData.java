package com.spring.springboot.hComic;

import lombok.Data;

import java.util.List;

/**
 * - - - - - - - - - -
 * H Comic Data 实体类
 * 储存漫画信息 / 漫画每页文件 url 路径
 * - - - - - - - - - -
 */

@Data
public class HComicData
{
    private HComic hComic;
    private List<String> hComicPages;
}
