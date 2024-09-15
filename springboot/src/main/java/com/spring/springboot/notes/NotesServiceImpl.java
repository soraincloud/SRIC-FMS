package com.spring.springboot.notes;

import com.spring.springboot.notesCategory.NotesCategoryMapper;
import com.spring.springboot.response.ResponseCode;
import com.spring.springboot.tools.EditFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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
    @Value("${filesPath}") //获取application.properties中的全局变量
    private String filesPath;

    @Autowired
    private EditFile editFile;

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

    /**
     * @author SRIC
     *
     * 根据 id 获取 notes
     * 通过工具类获取文件内容
     */
    @Override
    public NotesDataResponsePojo getNotesById(int id)
    {
        NotesDataResponsePojo notesDataResponse = new NotesDataResponsePojo();
        Notes notes = notesMapper.getNotesById(id);
        notesDataResponse.setNotes(notes);
        notesDataResponse.setNotesDataText(editFile.readFileToString(filesPath + "/notes/" + notes.getFilename()));
        return notesDataResponse;
    }

    /**
     * @author SRIC
     *
     * 将字符串写入对应 id 的文件
     */
    @Override
    public boolean editNotesData(NotesEditRequestPojo notesEditRequest)
    {
        return editFile.writeFile( filesPath + "/notes/" + notesEditRequest.getFilename(),notesEditRequest.getContent());
    }

    /**
     * @author SRIC
     *
     * 添加 notes
     * 先添加一条数据 将 title 与 category 插入
     * 后根据自增的 id 更新 filename
     */
    @Override
    public AddNotesResponsePojo addNotes(Notes notes)
    {
        notesMapper.addNotes(notes);
        notes.setFilename(notes.getId() + ".md");
        notesMapper.updateNotesFilename(notes);
        AddNotesResponsePojo addNotesResponse = new AddNotesResponsePojo();
        if(editFile.createFile(notes.getId() + ".md",filesPath + "/notes/"))
        {
            addNotesResponse.setCode(200);
            addNotesResponse.setId(notes.getId());
        }
        else
        {
            addNotesResponse.setCode(400);
        }
        return addNotesResponse;
    }
}
