package com.spring.springboot.notes;

import lombok.Data;

/**
 * add notes response 实体类
 * 返回添加 notes 状态码与新增的 notes id
 */
@Data
public class AddNotesResponsePojo
{
    private int id;
    private int code;
}
