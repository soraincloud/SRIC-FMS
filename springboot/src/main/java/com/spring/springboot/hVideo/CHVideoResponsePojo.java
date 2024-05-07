package com.spring.springboot.hVideo;

import lombok.Data;

import java.util.List;

@Data
public class CHVideoResponsePojo
{
    private List<CHVideo> hVideoList;
    private int total;
}
