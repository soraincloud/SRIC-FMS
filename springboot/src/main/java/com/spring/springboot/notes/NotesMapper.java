package com.spring.springboot.notes;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface NotesMapper
{
    @Select(value = "SELECT * FROM `data_notes` WHERE ")
    List<Notes> getNotesList();
}
