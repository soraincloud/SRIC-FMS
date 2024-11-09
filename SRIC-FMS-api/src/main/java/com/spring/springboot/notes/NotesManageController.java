package com.spring.springboot.notes;

import cn.dev33.satoken.stp.StpUtil;
import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * - - - - - - - - - -
 * notes manage 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/notesManage")
public class NotesManageController
{
    @Autowired
    NotesService notesService;

    /**
     * @author SRIC
     *
     * 获取 notes maange 数据列表 分页
     */
    @GetMapping("/getNotesManageList")
    public NotesListResponsePojo getNotesManageList(NotesListRequestPojo notesListRequest)
    {
        NotesListResponsePojo notesListResponse = new NotesListResponsePojo();
        notesListResponse.setNotesList(notesService.getNotesList(notesListRequest));
        notesListResponse.setTotal(notesService.getNotesCount());
        return notesListResponse;
    }

    /**
     * @author SRIC
     *
     * 修改一条 note 数据
     */
    @PostMapping("/updateNote")
    public ResponseCode updateNote(@RequestBody Notes note)
    {
        return notesService.updateNote(note);
    }
}
