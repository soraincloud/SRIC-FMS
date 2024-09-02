package com.spring.springboot.hVideo;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * - - - - - - - - - -
 * 对 data_h_video 数据库的操作层
 * - - - - - - - - - -
 */

@Mapper
public interface HVideoMapper
{
    /**
     * @author SRIC
     *
     * 从 data_h_video 中获取数据
     * 若传入 searchInput 不为空 便进行匹配
     * 若传入 mosaicSelect 不为 0 便进行匹配
     * 若传入 categorySelect 不为 0 便进行匹配
     * 获取的数据条目为 从 limitBefore 开始 limitSize 条
     */
    @Select(value = "SELECT * FROM `data_h_video` WHERE " +
            "( ( NAME LIKE concat('%',#{searchInput},'%') or NUMBER LIKE concat('%',#{searchInput},'%') ) OR #{searchInput} IS NULL OR #{searchInput} = '' )" +
            "AND ( MOSAIC = #{mosaicSelect} OR #{mosaicSelect} = '0' )" +
            "AND ( CATEGORY = #{categorySelect} OR #{categorySelect} = '0' )" +
            "LIMIT #{limitBefore} , #{limitSize}")
    List<HVideo> getHVideoList(HVideoRequestPojo pojo);

    /**
     * @author SRIC
     *
     * 通过 id 获取 video
     */
    @Select(value = "SELECT * FROM `data_h_video` WHERE ID = #{id}")
    HVideo getHVideoById(@Param(value = "id")int id);

    /**
     * @author SRIC
     *
     * 从 data_h_video 中获取数据条数
     * 若传入 searchInput 不为空 便进行匹配
     * 若传入 mosaicSelect 不为 0 便进行匹配
     * 若传入 categorySelect 不为 0 便进行匹配
     */
    @Select(value = "SELECT COUNT(*) FROM `data_h_video` WHERE " +
            "( ( NAME LIKE concat('%',#{searchInput},'%') or NUMBER LIKE concat('%',#{searchInput},'%') ) OR #{searchInput} IS NULL OR #{searchInput} = '' )" +
            "AND ( MOSAIC = #{mosaicSelect} OR #{mosaicSelect} = '0' )" +
            "AND ( CATEGORY = #{categorySelect} OR #{categorySelect} = '0' )")
    int getHVideoCount(HVideoRequestPojo pojo);
}
