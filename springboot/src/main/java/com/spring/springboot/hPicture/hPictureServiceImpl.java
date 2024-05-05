package com.spring.springboot.hPicture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class hPictureServiceImpl implements hPictureService
{
    @Autowired
    hPictureMapper hPictureMapper;

    @Override
    public List<hPicture> getHPictureRandomList()
    {
        List<hPicture> pictureList =  hPictureMapper.getHPictureList();
        Collections.shuffle(pictureList);
        return pictureList;
    }
}
