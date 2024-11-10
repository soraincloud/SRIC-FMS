package com.spring.springboot.notes;

import com.spring.springboot.response.ResponseCode;

import java.util.List;

public interface NotesService
{
    List<Notes> getNotesList(NotesListRequestPojo notesListRequest);
    int getNotesCount();
    ResponseCode updateNote(Notes note);
    List<Notes> getNotesListByUserUuid(NotesListByUserRequestPojo notesListByUserRequest);
    int getNotesCountByUserUuid(NotesListByUserRequestPojo notesListByUserRequest);
    ResponseCode addNote(Notes note);
    ResponseCode deleteNote(String uuid,String userUuid);
    ResponseCode deleteNoteData(String uuid);
}
