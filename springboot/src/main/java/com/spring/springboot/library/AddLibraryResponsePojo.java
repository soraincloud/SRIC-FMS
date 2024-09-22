package com.spring.springboot.library;

import lombok.Data;

/**
 * add library response 实体类
 * 返回添加 library 状态码与新增的 library id
 */
@Data
public class AddLibraryResponsePojo
{
    private int id;
    private int code;
}
