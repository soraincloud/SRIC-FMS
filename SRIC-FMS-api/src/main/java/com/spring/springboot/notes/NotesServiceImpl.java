package com.spring.springboot.notes;

import com.spring.springboot.response.ResponseCode;
import org.apache.coyote.Response;
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

    /**
     * @author SRIC
     *
     * 获取 notes 数据列表 分页
     */
    @Override
    public List<Notes> getNotesList(NotesListRequestPojo notesListRequest)
    {
        notesListRequest.setLimitSize(20); //一页获取20条数据
        notesListRequest.setLimitBefore((notesListRequest.getPage() - 1) * 20); //当前获取数据之前的空缺 （如第一页空缺0条 第二页空缺20条）
        return notesMapper.getNotesList(notesListRequest);
    }

    /**
     * @author SRIC
     *
     * 获取 notes 数据列表数量
     */
    @Override
    public int getNotesCount()
    {
        return notesMapper.getNotesCount();
    }

    /**
     * @author SRIC
     *
     * 修改一条 note 标题或内容
     */
    @Override
    public ResponseCode updateNote(Notes note)
    {
        ResponseCode responseCode = new ResponseCode();
        if(notesMapper.updateNote(note) != 0)
        {
            responseCode.setCode(200);
        }
        else
        {
            responseCode.setCode(400);
        }
        return responseCode;
    }
}
