package com.spring.springboot.hVideo;

import lombok.Data;

import java.util.List;

/**
 * - - - - - - - - - -
 * video response 实体类
 * 用于返回获取到的 video 数据和总数
 * - - - - - - - - - -
 */

@Data
public class HVideoResponsePojo
{
    private List<HVideo> hVideoList;
    private int total;
}
