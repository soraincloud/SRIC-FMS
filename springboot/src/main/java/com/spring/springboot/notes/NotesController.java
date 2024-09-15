package com.spring.springboot.notes;

import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * - - - - - - - - - -
 * notes 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/notes")
public class NotesController
{
    @Autowired
    NotesService notesService;

    /**
     * @author SRIC
     *
     * 获取 notes 分页列表
     */
    @GetMapping("/getNotesList")
    public NotesResponsePojo getHComicList(NotesRequestPojo notesRequest)
    {
        NotesResponsePojo notesResponse = new NotesResponsePojo();
        notesResponse.setNotesList(notesService.getNotesList(notesRequest));
        notesResponse.setTotal(notesService.getNotesCount(notesRequest));
        return notesResponse;
    }

    /**
     * @author SRIC
     *
     * 根据 id 获取 notes 数据
     */
    @GetMapping("/getNotesById")
    public NotesDataResponsePojo getNotesById(Notes notes)
    {
        return notesService.getNotesById(notes.getId());
    }

    /**
     * @author SRIC
     *
     * 根据 id 更新 notes 内容数据
     */
    @PostMapping("/editNotesData")
    public ResponseCode editNotesData(@RequestBody NotesEditRequestPojo notesEditRequest)
    {
        ResponseCode responseCode = new ResponseCode();
        if(notesService.editNotesData(notesEditRequest))
        {
            responseCode.setCode(200);
        }
        else
        {
            responseCode.setCode(400);
        }
        return responseCode;
    }

    /**
     * @author SRIC
     *
     * 添加一条 notes
     */
    @PostMapping("/addNotes")
    public AddNotesResponsePojo addNotes(@RequestBody Notes notes)
    {
        return notesService.addNotes(notes);
    }
}
