package com.spring.springboot.hComic;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface HComicMapper
{
    @Select(value = "SELECT * FROM `data_h_comic` WHERE " +
            "( NAME LIKE concat('%',#{searchInput},'%') OR #{searchInput} IS NULL OR #{searchInput} = '' )" +
            "AND ( MOSAIC = #{mosaicSelect} OR #{mosaicSelect} = '0' )" +
            "AND ( CATEGORY = #{categorySelect} OR #{categorySelect} = '0' )" +
            "LIMIT #{limitBefore} , #{limitSize}")
    List<HComic> getHComicList(HComicRequestPojo pojo);

    @Select(value = "SELECT * FROM `data_h_comic` WHERE ID = #{id}")
    HComic getHComicById(@Param(value = "id")int id);

    @Select(value = "SELECT COUNT(*) FROM `data_h_comic` WHERE " +
            "( NAME LIKE concat('%',#{searchInput},'%') OR #{searchInput} IS NULL OR #{searchInput} = '' )" +
            "AND ( MOSAIC = #{mosaicSelect} OR #{mosaicSelect} = '0' )" +
            "AND ( CATEGORY = #{categorySelect} OR #{categorySelect} = '0' )")
    int getHComicCount(HComicRequestPojo pojo);
}
