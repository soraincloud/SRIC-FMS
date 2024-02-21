package com.spring.springboot.hVideo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class hVideoServiceImpl implements hVideoService
{
    @Autowired
    hVideoMapper hVideoMapper;

    @Override
    public List<hVideo> getHVideoList()
    {
        return hVideoMapper.getHVideoList();
    }
}
