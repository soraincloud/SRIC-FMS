package com.spring.springboot.hVideoTag;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * - - - - - - - - - -
 * 对 data_h_video_tags 数据库的操作层
 * 对 relation_h_video_tag 数据库的操作层
 * - - - - - - - - - -
 */

@Mapper
public interface HVideoTagMapper
{

    /**
     * @author SRIC
     *
     * 通过 video id 获取 对应的多条 tag
     * 从 relation_h_video_tag 中 获取对应的 tag id 列表 并且查询到 tag 列表
     */
    @Select(value = "SELECT tags.* " +
            "FROM `relation_h_video_tag` AS relation " +
            "JOIN `data_h_video_tags` AS tags ON relation.tagid = tags.id " +
            "WHERE relation.videoid = #{videoId}")
    List<HVideoTag> getHVideoTagsByVideoId(@Param(value = "videoId")int videoId);

    /**
     * @author SRIC
     *
     * 获取 video tag 列表
     */
    @Select(value = "SELECT * FROM `data_h_video_tags`")
    List<HVideoTag> getHVideoTagList();

    /**
     * @author SRIC
     *
     * 通过 video id 和 tag id 获取 tag
     */
    @Select(value = "SELECT ID FROM `relation_h_video_tag` WHERE VIDEOID = #{videoId} AND TAGID = #{tagId}")
    String getHVideoTagByVideoIdAndTagId(AddHVideoTagRequestPojo addHVideoTagRequest);

    /**
     * @author SRIC
     *
     * 将 tag 添加给 video ( 添加一条数据在 relation 中 )
     */
    @Insert(value = "INSERT INTO `relation_h_video_tag` values (null, #{tagId}, #{videoId})")
    void addHVideoTag(AddHVideoTagRequestPojo addHVideoTagRequest);
}
