package com.spring.springboot.hComic;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * - - - - - - - - - -
 * 对 data_h_comic 数据库的操作层
 * - - - - - - - - - -
 */

@Mapper
public interface
HComicMapper
{
    /**
     * 从 data_h_comic 中获取数据
     * 若传入 searchInput 不为空 便进行匹配
     * 若传入 mosaicSelect 不为 0 便进行匹配
     * 若传入 categorySelect 不为 0 便进行匹配
     * 获取的数据条目为 从 limitBefore 开始 limitSize 条
     */
    @Select(value = "SELECT * FROM `data_h_comic` WHERE " +
            "( NAME LIKE concat('%',#{searchInput},'%') OR #{searchInput} IS NULL OR #{searchInput} = '' )" +
            "AND ( MOSAIC = #{mosaicSelect} OR #{mosaicSelect} = '0' )" +
            "AND ( CATEGORY = #{categorySelect} OR #{categorySelect} = '0' )" +
            "LIMIT #{limitBefore} , #{limitSize}")
    List<HComic> getHComicList(HComicRequestPojo pojo);

    /**
     * 通过 id 获取 comic
     */
    @Select(value = "SELECT * FROM `data_h_comic` WHERE ID = #{id}")
    HComic getHComicById(@Param(value = "id")int id);

    /**
     * 从 data_h_comic 中获取数据条数
     * 若传入 searchInput 不为空 便进行匹配
     * 若传入 mosaicSelect 不为 0 便进行匹配
     * 若传入 categorySelect 不为 0 便进行匹配
     */
    @Select(value = "SELECT COUNT(*) FROM `data_h_comic` WHERE " +
            "( NAME LIKE concat('%',#{searchInput},'%') OR #{searchInput} IS NULL OR #{searchInput} = '' )" +
            "AND ( MOSAIC = #{mosaicSelect} OR #{mosaicSelect} = '0' )" +
            "AND ( CATEGORY = #{categorySelect} OR #{categorySelect} = '0' )")
    int getHComicCount(HComicRequestPojo pojo);
}
