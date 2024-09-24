package com.spring.springboot.libraryCategory;

import com.spring.springboot.response.ResponseCode;
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
    @Override
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
    @Override
    public List<LibraryCategoryManageData> getLibraryCategoryManageDataList()
    {
        return libraryCategoryMapper.getLibraryCategoryManageDataList();
    }

    /**
     * @author SRIC
     *
     * 添加或者修改 library category
     */
    @Override
    public ResponseCode addOrUpdateLibraryCategory(LibraryCategory libraryCategory)
    {
        ResponseCode responseCode = new ResponseCode();
        if(libraryCategoryMapper.getLibraryCategoryCountByName(libraryCategory) > 0) //若已有重复的名称
        {
            responseCode.setCode(400);
        }
        else
        {
            if(libraryCategory.getId() == 0)
            {
                libraryCategoryMapper.addLibraryCategory(libraryCategory);
            }
            else
            {
                libraryCategoryMapper.updateLibraryCategory(libraryCategory);
            }
            responseCode.setCode(200);
        }
        return responseCode;
    }
}
