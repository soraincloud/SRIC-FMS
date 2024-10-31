package com.spring.springboot.notes;

import lombok.Data;

/**
 * - - - - - - - - - -
 * notes 实体类
 * 用于 notes 的数据传输
 * - - - - - - - - - -
 */

@Data
public class Notes
{
    private String uuid;
    private String title;
    private String text;
    private String userUuid;
    private String username;
}
