package com.spring.springboot.libraryCategory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * - - - - - - - - - -
 * library category 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/library")
public class LibraryCategoryController
{
    @Autowired
    LibraryCategoryService libraryCategoryService;

    /**
     * @author SRIC
     *
     * 获取 library category 列表
     */
    @GetMapping("/getLibraryCategoryList")
    public List<LibraryCategory> getLibraryCategoryList()
    {
        return libraryCategoryService.getLibraryCategoryList();
    }
}
