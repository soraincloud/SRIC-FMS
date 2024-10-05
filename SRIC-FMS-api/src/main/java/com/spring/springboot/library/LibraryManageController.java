package com.spring.springboot.library;

import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * - - - - - - - - - -
 * library 控制类
 * 单独的 manage 控制类
 * - - - - - - - - - -
 */

@CrossOrigin
@RestController
@RequestMapping("/libraryManage")
public class LibraryManageController
{
    @Autowired
    LibraryService libraryService;

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
