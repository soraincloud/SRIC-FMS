package com.spring.springboot.libraryCategory;

import com.spring.springboot.response.ResponseCode;

import java.util.List;

public interface LibraryCategoryService
{
    List<LibraryCategory> getLibraryCategoryList();
    List<LibraryCategoryManageData> getLibraryCategoryManageDataList();
    ResponseCode addOrUpdateLibraryCategory(LibraryCategory libraryCategory);
}
