package com.spring.springboot.hVideoTag;

import lombok.Data;

/**
 * - - - - - - - - - -
 * add video tag request 实体类
 * 用于添加 video tag 请求接参
 * - - - - - - - - - -
 */

@Data
public class AddHVideoTagRequestPojo
{
    private int videoId;
    private int tagId;
}
