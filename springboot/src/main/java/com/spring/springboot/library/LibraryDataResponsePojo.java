package com.spring.springboot.library;

import lombok.Data;

/**
 * library data response 实体类
 * 返回 library 数据以及内容数据
 */

@Data
public class LibraryDataResponsePojo
{
    private Library library;
    private String libraryDataText;
}
