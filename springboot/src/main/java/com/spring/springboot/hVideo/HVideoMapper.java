package com.spring.springboot.hVideo;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface HVideoMapper
{
    @Select(value = "SELECT * FROM `data_h_video` WHERE " +
            "( ( NAME LIKE concat('%',#{searchInput},'%') or NUMBER LIKE concat('%',#{searchInput},'%') ) OR #{searchInput} IS NULL OR #{searchInput} = '' )" +
            "AND ( MOSAIC = #{mosaicSelect} OR #{mosaicSelect} = '0' )" +
            "AND ( CATEGORY = #{categorySelect} OR #{categorySelect} = '0' )" +
            "LIMIT #{limitBefore} , #{limitSize}")
    List<HVideo> getHVideoList(HVideoRequestPojo pojo);

    @Select(value = "SELECT FILENAME FROM `data_h_video` WHERE ID = #{id}")
    String getFilenameById(@Param(value = "id")int id);

    @Select(value = "SELECT * FROM `data_h_video` WHERE ID = #{id}")
    HVideo getHVideoById(@Param(value = "id")int id);

    @Select(value = "SELECT COUNT(*) FROM `data_h_video` WHERE " +
            "( ( NAME LIKE concat('%',#{searchInput},'%') or NUMBER LIKE concat('%',#{searchInput},'%') ) OR #{searchInput} IS NULL OR #{searchInput} = '' )" +
            "AND ( MOSAIC = #{mosaicSelect} OR #{mosaicSelect} = '0' )" +
            "AND ( CATEGORY = #{categorySelect} OR #{categorySelect} = '0' )")
    int getHVideoCount(HVideoRequestPojo pojo);
}
