package com.spring.springboot.library;

import java.util.List;

public interface LibraryService
{
    List<Library> getLibraryList(LibraryRequestPojo libraryRequest);
    int getLibraryCount(LibraryRequestPojo libraryRequest);
    LibraryDataResponsePojo getLibraryById(int id);
    boolean editLibraryData(LibraryEditRequestPojo libraryEditRequest);
    AddLibraryResponsePojo addLibrary(Library library);
}
