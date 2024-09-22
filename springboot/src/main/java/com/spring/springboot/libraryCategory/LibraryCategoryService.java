package com.spring.springboot.libraryCategory;

import java.util.List;

public interface LibraryCategoryService
{
    List<LibraryCategory> getLibraryCategoryList();
    List<LibraryCategoryManageData> getLibraryCategoryManageDataList();
}
