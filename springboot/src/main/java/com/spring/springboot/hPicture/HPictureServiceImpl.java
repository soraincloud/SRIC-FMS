package com.spring.springboot.hPicture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

/**
 * - - - - - - - - - -
 * picture 服务类
 * - - - - - - - - - -
 */

@Service
public class HPictureServiceImpl implements HPictureService
{
    @Autowired
    HPictureMapper hPictureMapper;

    /**
     * 获取 picture 列表并且进行随机顺序打乱
     */
    @Override
    public List<HPicture> getHPictureRandomList()
    {
        List<HPicture> pictureList =  hPictureMapper.getHPictureList();
        Collections.shuffle(pictureList);
        return pictureList;
    }
}
