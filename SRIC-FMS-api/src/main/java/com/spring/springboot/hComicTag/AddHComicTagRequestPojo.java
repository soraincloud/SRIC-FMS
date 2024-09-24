package com.spring.springboot.hComicTag;

import lombok.Data;

/**
 * - - - - - - - - - -
 * Add Comic Tag 实体类
 * 用于为 comic 添加 tag 时的参数接收
 * - - - - - - - - - -
 */

@Data
public class AddHComicTagRequestPojo
{
    private int comicId;
    private int tagId;
}
