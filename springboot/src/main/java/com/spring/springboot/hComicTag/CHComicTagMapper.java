package com.spring.springboot.hComicTag;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CHComicTagMapper
{
    @Select(value = "SELECT tags.* " +
            "FROM `relation_h_comic_tag` AS relation " +
            "JOIN `data_h_comic_tags` AS tags ON relation.tagid = tags.id " +
            "WHERE relation.comicid = #{comicId}")
    List<CHComicTag> getHComicTagsByComicId(@Param(value = "comicId")int comicId);

    @Select(value = "SELECT * FROM `data_h_comic_tags`")
    List<CHComicTag> getHComicList();

    @Select(value = "SELECT ID FROM `relation_h_comic_tag` WHERE COMICID = #{comicId} AND TAGID = #{tagId}")
    String getHVideoTagByVideoIdAndTagId(CAddHComicTagRequestPojo addHComicTagRequest);

    @Insert(value = "INSERT INTO `relation_h_comic_tag` values (null, #{tagId}, #{comicId})")
    void addHVideoTag(CAddHComicTagRequestPojo addHComicTagRequest);
}
