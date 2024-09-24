package com.spring.springboot.hComicTag;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * - - - - - - - - - -
 * 对 data_h_comic_tags 数据库的操作层
 * 对 relation_h_comic_tag 数据库的操作层
 * - - - - - - - - - -
 */

@Mapper
public interface HComicTagMapper
{
    /**
     * @author SRIC
     *
     * 通过 comic id 获取 对应的多条 tag
     * 从 relation_h_comic_tag 中 获取对应的 tag id 列表 并且查询到 tag 列表
     */
    @Select(value = "SELECT tags.* " +
            "FROM `relation_h_comic_tag` AS relation " +
            "JOIN `data_h_comic_tags` AS tags ON relation.tagid = tags.id " +
            "WHERE relation.comicid = #{comicId}")
    List<HComicTag> getHComicTagsByComicId(@Param(value = "comicId")int comicId);

    /**
     * @author SRIC
     *
     * 获取 comic tag 列表
     */
    @Select(value = "SELECT * FROM `data_h_comic_tags`")
    List<HComicTag> getHComicTagList();

    /**
     * @author SRIC
     *
     * 通过 comic id 和 tag id 获取 tag
     */
    @Select(value = "SELECT ID FROM `relation_h_comic_tag` WHERE COMICID = #{comicId} AND TAGID = #{tagId}")
    String getHComicTagByComicIdAndTagId(AddHComicTagRequestPojo addHComicTagRequest);

    /**
     * @author SRIC
     *
     * 将 tag 添加给 comic ( 添加一条数据在 relation 中 )
     */
    @Insert(value = "INSERT INTO `relation_h_comic_tag` values (null, #{tagId}, #{comicId})")
    void addHVideoTag(AddHComicTagRequestPojo addHComicTagRequest);
}
