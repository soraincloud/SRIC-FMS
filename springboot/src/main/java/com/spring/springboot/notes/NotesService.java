package com.spring.springboot.notes;

import java.util.List;

public interface NotesService
{
    List<Notes> getNotesList(NotesRequestPojo notesRequest);
    int getNotesCount(NotesRequestPojo notesRequest);
    NotesDataResponsePojo getNotesById(int id);
}
