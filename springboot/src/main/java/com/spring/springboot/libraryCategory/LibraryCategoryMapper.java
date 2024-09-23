package com.spring.springboot.libraryCategory;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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

    /**
     * @author SRIC
     *
     * 从 category_library 中获取数据
     * 并且查询 category 下 library 的条数
     */
    @Select(value = "SELECT cl.id, cl.name, " +
            "(SELECT COUNT(*) FROM data_library dl WHERE dl.category = cl.id) AS libraryNumber " +
            "FROM category_library cl")
    List<LibraryCategoryManageData> getLibraryCategoryManageDataList();

    /**
     * @author SRIC
     *
     * 为 category_library 添加数据
     */
    @Insert(value = "INSERT INTO `category_library` values (null, #{name})")
    void addLibraryCategory(LibraryCategory libraryCategory);

    /**
     * @author SRIC
     *
     * 在 category_library 中修改数据
     */
    @Update(value = "UPDATE `category_library` SET NAME = #{name} WHERE ID = #{id}")
    void updateLibraryCategory(LibraryCategory libraryCategory);

    /**
     * @author SRIC
     *
     * 在 category_library 中查询是否有重复名称
     */
    @Select(value = "SELECT COUNT(*) FROM `category_library` WHERE NAME = #{name}")
    int getLibraryCategoryCountByName(LibraryCategory libraryCategory);
}
