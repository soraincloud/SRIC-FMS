package com.spring.springboot.notes;

import lombok.Data;

/**
 * notes list by user request 实体类
 * 根据用户获取 notes 列表的请求参数
 */

@Data
public class NotesListByUserRequestPojo
{
    private String searchInput;
    private String userUuid;
    private int page;
    private int limitBefore;
    private int limitSize;
}
