package com.spring.springboot.hPicture;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface hPictureMapper
{
    @Select(value = "SELECT * FROM `data_h_picture`")
    List<hPicture> getHPictureList();
}
