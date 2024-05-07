package com.spring.springboot.hVideo;

import com.spring.springboot.hVideoTag.CHVideoTag;
import lombok.Data;

import java.util.List;

@Data
public class CHVideo
{
    private int id;
    private String name;
    private String filename;
    private String number;
    private int mosaic;
    private int category;
    private List<CHVideoTag> hVideoTagList;
    private String videoCover;
    private Boolean isVideoCoverNotNull;
}
