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
     * 从 data_notes 中获取数据
     * 若传入 searchInput 不为空 便进行匹配
     * 若传入 category 不为 0 便进行匹配
     * 获取的数据条目为 从 limitBefore 开始 limitSize 条
     *
     * 从 category_notes 中匹配 categoryName
     */
    @Select(value = "SELECT dn.*, cn.name as categoryName FROM `data_notes` dn " +
            "LEFT JOIN `category_notes` cn ON dn.category = cn.id " +
            "WHERE (dn.title LIKE concat('%', #{searchInput}, '%') OR #{searchInput} IS NULL OR #{searchInput} = '') " +
            "AND (dn.category = #{category} OR #{category} = '0') " +
            "LIMIT #{limitBefore}, #{limitSize}")
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

    /**
     * @author SRIC
     *
     * 从 data_notes 中获取数据
     * 根据 id 获取 notes
     */
    @Select(value = "SELECT dn.*, cn.name as categoryName FROM `data_notes` dn LEFT JOIN `category_notes` cn ON dn.category = cn.id WHERE dn.ID = #{id}")
    Notes getNotesById(@Param(value = "id")int id);

    /**
     * @author SRIC
     *
     * 为 data_notes 添加一条新的数据
     * id 自增
     * title 与 category 插入
     * filename 需要根据 id 生成 所以不在这里处理
     */
    @Insert(value = "INSERT INTO `data_notes` values (null, #{title}, null , #{category})")
    @Options(useGeneratedKeys = true, keyProperty = "id", keyColumn = "id")
    void addNotes(Notes notes);

    /**
     * @author SRIC
     *
     * 为 data_notes 刚插入的数据更新 filename
     */
    @Update(value = "UPDATE `data_notes` SET FILENAME = #{filename} WHERE ID = #{id}")
    void updateNotesFilename(Notes notes);
}
