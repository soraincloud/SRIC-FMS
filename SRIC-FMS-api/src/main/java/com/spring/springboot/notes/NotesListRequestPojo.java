package com.spring.springboot.notes;

import lombok.Data;

/**
 * notes list request 实体类
 * 获取 notes 列表的请求参数
 */

@Data
public class NotesListRequestPojo
{
    private int page;
    private int limitBefore;
    private int limitSize;
}
