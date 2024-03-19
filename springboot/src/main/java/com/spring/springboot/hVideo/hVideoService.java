package com.spring.springboot.hVideo;

import java.util.List;

public interface hVideoService
{
    List<hVideo> getHVideoList(hVideoRequestPojo hVideoSearchRequestPojo);
    String getFilenameById(int id);

    hVideo getHVideoById(int id);
    int getHVideoCount();
}
