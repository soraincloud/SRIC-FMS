package com.spring.springboot.libraryCategory;

import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * - - - - - - - - - -
 * library category 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/libraryManage")
public class LibraryCategoryManageController
{
    @Autowired
    LibraryCategoryService libraryCategoryService;
    
    /**
     * @author SRIC
     *
     * 获取 library category 列表
     * 并且获取 category 下 library 的条数
     */
    @GetMapping("/getLibraryCategoryManageDataList")
    public List<LibraryCategoryManageData> getLibraryCategoryManageDataList()
    {
        return libraryCategoryService.getLibraryCategoryManageDataList();
    }

    @PostMapping("/addOrUpdateLibraryCategory")
    public ResponseCode addOrUpdateLibraryCategory(@RequestBody LibraryCategory libraryCategory)
    {
        return libraryCategoryService.addOrUpdateLibraryCategory(libraryCategory);
    }
}
