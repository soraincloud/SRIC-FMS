package com.spring.springboot.notes;

import com.spring.springboot.response.ResponseCode;

import java.util.List;

public interface NotesService
{
    List<Notes> getNotesList(NotesRequestPojo notesRequest);
    int getNotesCount(NotesRequestPojo notesRequest);
    NotesDataResponsePojo getNotesById(int id);
    boolean editNotesData(NotesEditRequestPojo notesEditRequest);
    AddNotesResponsePojo addNotes(Notes notes);
}
