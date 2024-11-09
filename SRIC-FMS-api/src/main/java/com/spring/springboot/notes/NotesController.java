package com.spring.springboot.notes;

import cn.dev33.satoken.stp.StpUtil;
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
     * 根据用户 token 获取 user uuid 并获取对应的 notes 列表
     */
    @GetMapping("/getNotesListByUser")
    public NotesListResponsePojo getNotesListByUser(NotesListByUserRequestPojo notesListByUserRequest, @RequestHeader("Authorization") String tokenValue)
    {
        NotesListResponsePojo notesListResponse = new NotesListResponsePojo();
        Object loginId = StpUtil.getLoginIdByToken(tokenValue); //通过 token 获取当前登录的用户 uuid
        notesListByUserRequest.setUserUuid(loginId.toString()); //将 uuid 放入参数对象中
        notesListResponse.setNotesList(notesService.getNotesListByUserUuid(notesListByUserRequest)); //根据参数获取 notes 列表
        notesListResponse.setTotal(notesService.getNotesCountByUserUuid(notesListByUserRequest)); //根据参数获取符合条件的 notes 条目总数
        return notesListResponse;
    }
}
