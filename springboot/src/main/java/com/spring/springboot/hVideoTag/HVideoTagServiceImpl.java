package com.spring.springboot.hVideoTag;

import com.spring.springboot.response.ResponseCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HVideoTagServiceImpl implements HVideoTagService
{
    @Autowired
    HVideoTagMapper hVideoTagMapper;

    @Override
    public List<HVideoTag> getHVideoTagList()
    {
        return hVideoTagMapper.getHVideoTagList();
    }

    @Override
    public ResponseCode addHVideoTag(AddHVideoTagRequestPojo addHVideoTagRequest)
    {
        ResponseCode code = new ResponseCode();
        String id = hVideoTagMapper.getHVideoTagByVideoIdAndTagId(addHVideoTagRequest); //获取一次看是否有数据
        if(id == null) //无数据则返回正常状态码并添加数据
        {
            hVideoTagMapper.addHVideoTag(addHVideoTagRequest);
            code.setCode(200);
        }
        else //有数据则返回错误状态码
        {
            code.setCode(400);
        }
        return code;
    }
}
