package com.spring.springboot.hVideo;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface hVideoMapper
{
    @Select(value = "SELECT * FROM `data_h_video`")
    List<hVideo> getHVideoList();
}
