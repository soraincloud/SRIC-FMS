package com.spring.springboot.notes;

import org.apache.ibatis.annotations.*;

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
            "JOIN `data_user` u ON n.user_uuid = u.uuid " +
            "LIMIT #{limitBefore}, #{limitSize}")
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

    /**
     * @author SRIC
     *
     * 根据 user_uuid 获取 notes 数据 分页
     * 若传入 searchInput 不为空 便进行匹配
     */
    @Select(value = "SELECT * FROM `data_notes` WHERE user_uuid = #{userUuid}" +
            "AND ( ( TITLE LIKE concat('%',#{searchInput},'%') or TEXT LIKE concat('%',#{searchInput},'%') ) OR #{searchInput} IS NULL OR #{searchInput} = '' )" +
            "LIMIT #{limitBefore}, #{limitSize}")
    List<Notes> getNotesListByUserUuid(NotesListByUserRequestPojo notesListByUserRequest);

    /**
     * @author SRIC
     *
     * 根据 user_uuid 获取 notes 数据 条目数量
     * 若传入 searchInput 不为空 便进行匹配
     */
    @Select(value = "SELECT COUNT(*) FROM `data_notes` WHERE user_uuid = #{userUuid}" +
            "AND ( ( TITLE LIKE concat('%',#{searchInput},'%') or TEXT LIKE concat('%',#{searchInput},'%') ) OR #{searchInput} IS NULL OR #{searchInput} = '' )" +
            "LIMIT #{limitBefore}, #{limitSize}")
    int getNotesCountByUserUuid(NotesListByUserRequestPojo notesListByUserRequest);

    /**
     * @author SRIC
     *
     * 新增一条 note 数据
     */
    @Insert(value = "INSERT INTO `data_notes`(uuid, title, text, user_uuid, createtime) VALUES(UUID(),#{title},#{text},#{userUuid},NOW())")
    int addNote(Notes notes);
}
