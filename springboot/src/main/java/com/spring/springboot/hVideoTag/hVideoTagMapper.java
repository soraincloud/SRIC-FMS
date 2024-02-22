package com.spring.springboot.hVideoTag;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface hVideoTagMapper
{
    @Select(value = "SELECT * FROM `data_h_video_tag` WHERE VID = #{vid}")
    List<hVideoTag> getHVideoTagByVid(@Param(value = "vid")int vid);
}
