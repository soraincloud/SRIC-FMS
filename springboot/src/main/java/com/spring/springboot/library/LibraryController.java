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
     * 获取 notes 分页列表
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

    /**
     * @author SRIC
     *
     * 根据 id 更新 library 内容数据
     */
    @PostMapping("/editLibraryData")
    public ResponseCode editLibraryData(@RequestBody LibraryEditRequestPojo libraryEditRequest)
    {
        ResponseCode responseCode = new ResponseCode();
        if(libraryService.editLibraryData(libraryEditRequest))
        {
            responseCode.setCode(200);
        }
        else
        {
            responseCode.setCode(400);
        }
        return responseCode;
    }

    /**
     * @author SRIC
     *
     * 添加一条 library
     */
    @PostMapping("/addLibrary")
    public AddLibraryResponsePojo addLibrary(@RequestBody Library library)
    {
        return libraryService.addLibrary(library);
    }
}
