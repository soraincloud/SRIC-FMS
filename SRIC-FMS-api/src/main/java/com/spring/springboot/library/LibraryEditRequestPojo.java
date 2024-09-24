package com.spring.springboot.library;

import lombok.Data;

/**
 * library edit request 实体类
 * 获取修改 library 的 id ,文件名称和内容字符串
 */

@Data
public class LibraryEditRequestPojo
{
    private int id;
    private String filename;
    private String content;
}
