package com.spring.springboot.hVideo;

import lombok.Data;

import java.util.List;

@Data
public class hVideoResponsePojo
{
    private List<hVideo> hVideoList;
    private int total;
}
