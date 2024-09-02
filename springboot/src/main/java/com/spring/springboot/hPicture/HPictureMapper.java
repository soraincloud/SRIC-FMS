package com.spring.springboot.hPicture;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * - - - - - - - - - -
 * 对 data_h_picture 数据库的操作层
 * - - - - - - - - - -
 */

@Mapper
public interface HPictureMapper
{
    /**
     * @author SRIC
     *
     * 获取 picture 列表
     */
    @Select(value = "SELECT * FROM `data_h_picture`")
    List<HPicture> getHPictureList();
}
