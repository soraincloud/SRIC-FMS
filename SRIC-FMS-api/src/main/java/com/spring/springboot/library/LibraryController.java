package com.spring.springboot.library;

import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * - - - - - - - - - -
 * library 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/library")
public class LibraryController
{
    @Autowired
    LibraryService libraryService;

    /**
     * @author SRIC
     *
     * 获取 library 分页列表
     */
    @GetMapping("/getLibraryList")
    public LibraryResponsePojo getLibraryList(LibraryRequestPojo libraryRequest)
    {
        LibraryResponsePojo libraryResponse = new LibraryResponsePojo();
        libraryResponse.setLibraryList(libraryService.getLibraryList(libraryRequest));
        libraryResponse.setTotal(libraryService.getLibraryCount(libraryRequest));
        return libraryResponse;
    }

    /**
     * @author SRIC
     *
     * 根据 id 获取 library 数据
     */
    @GetMapping("/getLibraryById")
    public LibraryDataResponsePojo getLibraryById(Library library)
    {
        return libraryService.getLibraryById(library.getId());
    }
}
