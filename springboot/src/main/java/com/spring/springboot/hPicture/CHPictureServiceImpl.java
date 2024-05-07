package com.spring.springboot.hPicture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class CHPictureServiceImpl implements CHPictureService
{
    @Autowired
    CHPictureMapper hPictureMapper;

    @Override
    public List<CHPicture> getHPictureRandomList()
    {
        List<CHPicture> pictureList =  hPictureMapper.getHPictureList();
        Collections.shuffle(pictureList);
        return pictureList;
    }
}
