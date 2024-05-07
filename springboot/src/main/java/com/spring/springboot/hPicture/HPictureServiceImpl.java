package com.spring.springboot.hPicture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class HPictureServiceImpl implements HPictureService
{
    @Autowired
    HPictureMapper hPictureMapper;

    @Override
    public List<HPicture> getHPictureRandomList()
    {
        List<HPicture> pictureList =  hPictureMapper.getHPictureList();
        Collections.shuffle(pictureList);
        return pictureList;
    }
}
