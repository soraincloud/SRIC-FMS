package com.spring.springboot.hVideo;

import lombok.Data;

import java.util.List;

@Data
public class HVideoResponsePojo
{
    private List<HVideo> hVideoList;
    private int total;
}
