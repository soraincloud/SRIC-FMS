package com.spring.springboot.hVideo;

import com.spring.springboot.hVideoTag.hVideoTagMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class hVideoServiceImpl implements hVideoService
{
    @Autowired
    hVideoMapper hVideoMapper;
    @Autowired
    hVideoTagMapper hVideoTagMapper;

    @Override
    public List<hVideo> getHVideoList()
    {
        List<hVideo> hVideoList = hVideoMapper.getHVideoList();
        for(int i = 0;i < hVideoList.size();i++)//遍历获取tag
        {
            hVideoList.get(i).setHVideoTagList(hVideoTagMapper.getHVideoTagByVid(hVideoList.get(i).getId()));
        }
        return hVideoList;
    }

    @Override
    public String getFilenameById(int id)
    {
        return hVideoMapper.getFilenameById(id);
    }
}
