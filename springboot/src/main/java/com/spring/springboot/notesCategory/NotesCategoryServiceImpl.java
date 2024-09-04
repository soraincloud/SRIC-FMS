package com.spring.springboot.notesCategory;

import com.spring.springboot.notesCategory.NotesCategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * - - - - - - - - - -
 * notes category 服务类
 * - - - - - - - - - -
 */

@Service
public class NotesCategoryServiceImpl implements NotesCategoryService
{
    @Autowired
    NotesCategoryMapper notesCategoryMapper;

    /**
     * @author SRIC
     *
     * 获取 notes category 列表
     */
    public List<NotesCategory> getNotesCategoryList()
    {
        return notesCategoryMapper.getNotesCategoryList();
    }
}
