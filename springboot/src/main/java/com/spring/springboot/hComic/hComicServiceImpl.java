package com.spring.springboot.hComic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import com.spring.springboot.hComicTag.hComicTagMapper;

import java.util.List;

import static com.spring.springboot.tools.imageToBase64.imageToBase64;

@Service
public class hComicServiceImpl implements hComicService
{
    @Value("${filesPath}") //获取application.properties中的全局变量
    private String filesPath;

    @Autowired
    hComicMapper hComicMapper;
    @Autowired
    hComicTagMapper hComicTagMapper;

    @Override
    public List<hComic> getHComicList(hComicRequestPojo hComicRequest)
    {
        hComicRequest.setLimitSize(20); //一页获取20条数据
        hComicRequest.setLimitBefore((hComicRequest.getPage() - 1) * 20); //当前获取数据之前的空缺 （如第一页空缺0条 第二页空缺20条）
        List<hComic> hComicList = hComicMapper.getHComicList(hComicRequest);
        for(int i = 0;i < hComicList.size();i++)//遍历获取tag
        {
            hComicList.get(i).setHComicTagList(hComicTagMapper.getHComicTagsByComicId(hComicList.get(i).getId()));
            String coverPath = filesPath + "/comic/" + hComicList.get(i).getId() + "/00001.webp";
            String imageData = imageToBase64(coverPath);
            hComicList.get(i).setComicCover("data:image/webp;base64," + imageData);
        }
        return hComicList;
    }

    @Override
    public hComic getHComicById(int id)
    {
        hComic comic = hComicMapper.getHComicById(id);
        comic.setHComicTagList(hComicTagMapper.getHComicTagsByComicId(id));
        return comic;
    }

    @Override
    public int getHComicCount()
    {
        return hComicMapper.getHComicCount();
    }
}
