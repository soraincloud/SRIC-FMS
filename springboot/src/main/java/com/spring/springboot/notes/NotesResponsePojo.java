package com.spring.springboot.notes;

import lombok.Data;

import java.util.List;

/**
 * notes response 实体类
 * 获取 notes 列表的返回数据实体
 */

@Data
public class NotesResponsePojo
{
    private List<Notes> notesList;
    private int total;
}