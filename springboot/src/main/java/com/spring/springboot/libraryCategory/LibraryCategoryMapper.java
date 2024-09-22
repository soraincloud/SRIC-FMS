package com.spring.springboot.libraryCategory;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * - - - - - - - - - -
 * 对 category_library 数据库的操作层
 * - - - - - - - - - -
 */

@Mapper
public interface LibraryCategoryMapper
{
    /**
     * @author SRIC
     *
     * 从 category_library 中获取数据
     */
    @Select(value = "SELECT * FROM `category_library`")
    List<LibraryCategory> getLibraryCategoryList();
}
