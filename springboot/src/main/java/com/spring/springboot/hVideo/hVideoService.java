package com.spring.springboot.hVideo;

import java.util.List;

public interface hVideoService
{
    List<hVideo> getHVideoList();
    String getFilenameById(int id);
}
