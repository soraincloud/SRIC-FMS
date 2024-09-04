package com.spring.springboot.notesCategory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * - - - - - - - - - -
 * notes category 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/notes")
public class NotesCategoryController
{
    @Autowired
    NotesCategoryService notesCategoryService;

    /**
     * @author SRIC
     *
     * 获取 notes category 列表
     */
    @GetMapping("/getNotesCategoryList")
    public List<NotesCategory> getNotesCategoryList()
    {
        return notesCategoryService.getNotesCategoryList();
    }
}
