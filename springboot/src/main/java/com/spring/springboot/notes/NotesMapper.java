package com.spring.springboot.notes;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface NotesMapper
{
    @Select(value = "SELECT * FROM `data_notes` WHERE " +
            "( NAME LIKE concat('%',#{searchInput},'%') OR #{searchInput} IS NULL OR #{searchInput} = '' )" +
            "AND ( MOSAIC = #{mosaicSelect} OR #{mosaicSelect} = '0' )" +
            "LIMIT #{limitBefore} , #{limitSize}")
    List<Notes> getNotesList(NotesRequestPojo notesRequest);
}
