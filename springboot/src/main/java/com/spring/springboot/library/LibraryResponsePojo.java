package com.spring.springboot.library;

import lombok.Data;

import java.util.List;

/**
 * library response 实体类
 * 获取 library 列表的返回数据实体
 */

@Data
public class LibraryResponsePojo
{
    private List<Library> libraryList;
    private int total;
}
