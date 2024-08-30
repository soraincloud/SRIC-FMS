package com.spring.springboot.hComicTag;

import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * - - - - - - - - - -
 * comic tag 服务类
 * - - - - - - - - - -
 */

@Service
public class HComicTagServiceImpl implements HComicTagService
{
    @Autowired
    HComicTagMapper hComicTagMapper;

    /**
     * 获取 comic tag 列表
     */
    @Override
    public List<HComicTag> getHComicTagList()
    {
        return hComicTagMapper.getHComicTagList();
    }

    /**
     * 添加 comic tag
     * 先获取一次 tag 避免重复添加
     * 未重复时 添加 tag
     */
    @Override
    public ResponseCode addHComicTag(AddHComicTagRequestPojo addHComicTagRequest)
    {
        ResponseCode code = new ResponseCode();
        String id = hComicTagMapper.getHComicTagByComicIdAndTagId(addHComicTagRequest); //获取一次看是否有数据
        if(id == null) //无数据则返回正常状态码并添加数据
        {
            hComicTagMapper.addHVideoTag(addHComicTagRequest);
            code.setCode(200);
        }
        else //有数据则返回错误状态码
        {
            code.setCode(400);
        }
        return code;
    }
}
