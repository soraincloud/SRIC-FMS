package com.spring.springboot.hPicture;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CHPictureMapper
{
    @Select(value = "SELECT * FROM `data_h_picture`")
    List<CHPicture> getHPictureList();
}
