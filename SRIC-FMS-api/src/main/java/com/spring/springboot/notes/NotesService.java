package com.spring.springboot.notes;

import com.spring.springboot.response.ResponseCode;

import java.util.List;

public interface NotesService
{
    List<Notes> getNotesList(NotesListRequestPojo notesListRequest);
    int getNotesCount();
    ResponseCode updateNote(Notes note);
}
