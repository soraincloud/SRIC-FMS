package com.spring.springboot.hVideo;

import com.spring.springboot.hVideoTag.hVideoTag;
import lombok.Data;

import java.util.List;

@Data
public class hVideo
{
    private int id;
    private String name;
    private String filename;
    private String number;
    private int mosaic;
    private int category;
    private List<hVideoTag> hVideoTagList;
    private String videoCover;
    private Boolean isVideoCoverNotNull;
}
