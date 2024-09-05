package com.spring.springboot.notes;

import com.spring.springboot.notesCategory.NotesCategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * - - - - - - - - - -
 * notes 服务类
 * - - - - - - - - - -
 */

@Service
public class NotesServiceImpl implements NotesService
{
    @Autowired
    NotesMapper notesMapper;

    @Autowired
    NotesCategoryMapper notesCategoryMapper;

    /**
     * @author SRIC
     *
     * 获取 notes 列表数据
     * 设置空缺是为了方便 sql 语句进行查询
     */
    @Override
    public List<Notes> getNotesList(NotesRequestPojo notesRequest)
    {
        notesRequest.setLimitSize(20); //一页获取20条数据
        notesRequest.setLimitBefore((notesRequest.getPage() - 1) * 20); //当前获取数据之前的空缺 （如第一页空缺0条 第二页空缺20条）
        List<Notes> notesList = notesMapper.getNotesList(notesRequest);
        return notesList;
    }

    /**
     * @author SRIC
     *
     * 获取符合条件的 notes 的条数 用于分页显示传入 total
     */
    @Override
    public int getNotesCount(NotesRequestPojo notesRequest)
    {
        return notesMapper.getNotesCount(notesRequest);
    }
}
