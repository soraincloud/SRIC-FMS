package com.spring.springboot.hComicTag;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface hComicTagMapper
{
    @Select(value = "SELECT tags.* " +
            "FROM `relation_h_comic_tag` AS relation " +
            "JOIN `data_h_comic_tags` AS tags ON relation.tagid = tags.id " +
            "WHERE relation.comicid = #{comicId}")
    List<hComicTag> getHComicTagsByComicId(@Param(value = "comicId")int comicId);
}
