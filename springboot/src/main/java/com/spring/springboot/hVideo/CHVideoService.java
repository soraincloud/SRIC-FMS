package com.spring.springboot.hVideo;

import java.util.List;

public interface CHVideoService
{
    List<CHVideo> getHVideoList(CHVideoRequestPojo hVideoRequest);
    String getFilenameById(int id);

    CHVideo getHVideoById(int id);
    int getHVideoCount(CHVideoRequestPojo pojo);
}
