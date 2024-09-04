package com.spring.springboot.notes;

import lombok.Data;

/**
 * - - - - - - - - - -
 * notes 实体类
 * 用于 notes 数据传输
 * - - - - - - - - - -
 */

@Data
public class Notes
{
    private int id;
    private String title;
    private String filename;
    private int category;
}
