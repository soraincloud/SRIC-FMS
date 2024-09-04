package com.spring.springboot.notesCategory;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * - - - - - - - - - -
 * 对 category_notes 数据库的操作层
 * - - - - - - - - - -
 */

@Mapper
public interface NotesCategoryMapper
{
    /**
     * @author SRIC
     *
     * 从 category_notes 中获取数据
     */
    @Select(value = "SELECT * FROM `category_notes`")
    List<NotesCategory> getNotesCategoryList();
}
