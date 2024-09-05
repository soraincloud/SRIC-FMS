package com.spring.springboot.notes;

import com.spring.springboot.hComic.HComicRequestPojo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * - - - - - - - - - -
 * 对 data_notes 数据库的操作层
 * - - - - - - - - - -
 */

@Mapper
public interface NotesMapper
{
    /**
     * @author SRIC
     *
     * 从 data_notes 中获取数据
     * 若传入 searchInput 不为空 便进行匹配
     * 若传入 category 不为 0 便进行匹配
     * 获取的数据条目为 从 limitBefore 开始 limitSize 条
     */
    @Select(value = "SELECT * FROM `data_notes` WHERE " +
            "( TITLE LIKE concat('%',#{searchInput},'%') OR #{searchInput} IS NULL OR #{searchInput} = '' )" +
            "AND ( CATEGORY = #{category} OR #{category} = '0' )" +
            "LIMIT #{limitBefore} , #{limitSize}")
    List<Notes> getNotesList(NotesRequestPojo notesRequest);

    /**
     * @author SRIC
     *
     * 从 data_notes 中获取数据条数
     * 若传入 searchInput 不为空 便进行匹配
     * 若传入 category 不为 0 便进行匹配
     */
    @Select(value = "SELECT COUNT(*) FROM `data_notes` WHERE " +
            "( TITLE LIKE concat('%',#{searchInput},'%') OR #{searchInput} IS NULL OR #{searchInput} = '' )" +
            "AND ( CATEGORY = #{category} OR #{category} = '0' )")
    int getNotesCount(NotesRequestPojo notesRequest);
}
