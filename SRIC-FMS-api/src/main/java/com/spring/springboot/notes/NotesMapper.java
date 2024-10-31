package com.spring.springboot.notes;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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
     * 获取 notes 数据列表 分页
     */
    @Select(value = "SELECT n.uuid, n.title, n.text, n.user_uuid, u.username " +
            "FROM `data_notes` n " +
            "JOIN `data_user` u ON n.user_uuid = u.uuid ")
    List<Notes> getNotesList(NotesListRequestPojo notesListRequest);

    /**
     * @author SRIC
     *
     * 获取 notes 数据列表数量
     */
    @Select(value = "SELECT COUNT(*) FROM `data_notes`")
    int getNotesCount();

    /**
     * @author SRIC
     *
     * 更新一条 notes 数据
     */
    @Update(value = "UPDATE `data_notes` SET title = #{title}, text = #{text} WHERE uuid = #{uuid}")
    int updateNote(Notes note);
}
