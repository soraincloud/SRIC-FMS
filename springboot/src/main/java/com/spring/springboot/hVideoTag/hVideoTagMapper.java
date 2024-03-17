package com.spring.springboot.hVideoTag;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface hVideoTagMapper
{

    @Select(value = "SELECT tags.* " +
            "FROM `relation_h_video_tag` AS relation " +
            "JOIN `data_h_video_tags` AS tags ON relation.tagid = tags.id " +
            "WHERE relation.videoid = #{videoId}")
    List<hVideoTag> getHVideoTagsByVideoId(@Param(value = "videoId")int videoId);
}
