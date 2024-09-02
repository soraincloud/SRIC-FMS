package com.spring.springboot.notes;

import lombok.Data;

import java.util.List;

@Data
public class NotesResponsePojo
{
    private List<Notes> notesList;
    private int total;
}
