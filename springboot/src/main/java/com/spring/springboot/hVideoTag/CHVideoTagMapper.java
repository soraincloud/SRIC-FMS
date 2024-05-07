package com.spring.springboot.hVideoTag;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CHVideoTagMapper
{

    @Select(value = "SELECT tags.* " +
            "FROM `relation_h_video_tag` AS relation " +
            "JOIN `data_h_video_tags` AS tags ON relation.tagid = tags.id " +
            "WHERE relation.videoid = #{videoId}")
    List<CHVideoTag> getHVideoTagsByVideoId(@Param(value = "videoId")int videoId);

    @Select(value = "SELECT * FROM `data_h_video_tags`")
    List<CHVideoTag> getHVideoTagList();

    @Select(value = "SELECT ID FROM `relation_h_video_tag` WHERE VIDEOID = #{videoId} AND TAGID = #{tagId}")
    String getHVideoTagByVideoIdAndTagId(CAddHVideoTagRequestPojo addHVideoTagRequest);

    @Insert(value = "INSERT INTO `relation_h_video_tag` values (null, #{tagId}, #{videoId})")
    void addHVideoTag(CAddHVideoTagRequestPojo addHVideoTagRequest);
}
