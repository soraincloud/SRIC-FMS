package com.spring.springboot.hVideo;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface hVideoMapper
{
    @Select(value = "SELECT * FROM `data_h_video`")
    List<hVideo> getHVideoList();

    @Select(value = "SELECT FILENAME FROM `data_h_video` WHERE ID = #{id}")
    String getFilenameById(@Param(value = "id")int id);
}
