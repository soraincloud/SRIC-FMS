package com.spring.springboot.notes;

import lombok.Data;

@Data
public class Notes
{
    private int id;
    private String title;
    private String filename;
    private int category;
}
