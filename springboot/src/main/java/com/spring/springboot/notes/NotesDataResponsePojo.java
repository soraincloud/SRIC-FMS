package com.spring.springboot.notes;

import lombok.Data;

/**
 * notes data response 实体类
 * 获取 notes 数据以及内容数据
 */

@Data
public class NotesDataResponsePojo
{
    private Notes notes;
    private String notesDataText;
}
