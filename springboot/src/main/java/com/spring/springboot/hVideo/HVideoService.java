package com.spring.springboot.hVideo;

import java.util.List;

public interface HVideoService
{
    List<HVideo> getHVideoList(HVideoRequestPojo hVideoRequest);
    String getFilenameById(int id);
    HVideo getHVideoById(int id);
    int getHVideoCount(HVideoRequestPojo pojo);
}
