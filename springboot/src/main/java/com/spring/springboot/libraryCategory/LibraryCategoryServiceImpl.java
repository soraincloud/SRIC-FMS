package com.spring.springboot.libraryCategory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * - - - - - - - - - -
 * library category 服务类
 * - - - - - - - - - -
 */

@Service
public class LibraryCategoryServiceImpl implements LibraryCategoryService
{
    @Autowired
    LibraryCategoryMapper libraryCategoryMapper;

    /**
     * @author SRIC
     *
     * 获取 library category 列表
     */
    public List<LibraryCategory> getLibraryCategoryList()
    {
        return libraryCategoryMapper.getLibraryCategoryList();
    }

    /**
     * @author SRIC
     *
     * 获取 library category 列表
     * 并且获取 category 下 library 的条数
     */
    public List<LibraryCategoryManageData> getLibraryCategoryManageDataList()
    {
        return libraryCategoryMapper.getLibraryCategoryManageDataList();
    }
}
