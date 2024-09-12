package com.spring.springboot.notes;

import lombok.Data;

/**
 * notes edit request 实体类
 * 获取修改 notes 的 id ,文件名称和内容字符串
 */

@Data
public class NotesEditRequestPojo
{
    private int id;
    private String filename;
    private String content;
}
