package com.spring.springboot.library;

import lombok.Data;

/**
 * - - - - - - - - - -
 * library 实体类
 * 用于 library 数据传输
 * - - - - - - - - - -
 */

@Data
public class Library
{
    private int id;
    private String title;
    private String filename;
    private int category;
    private String categoryName;
}
