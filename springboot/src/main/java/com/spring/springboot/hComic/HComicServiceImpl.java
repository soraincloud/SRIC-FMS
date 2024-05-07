package com.spring.springboot.hComic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import com.spring.springboot.hComicTag.HComicTagMapper;

import java.util.*;

@Service
public class HComicServiceImpl implements HComicService
{
    @Value("${filesPath}") //获取application.properties中的全局变量
    private String filesPath;

    @Autowired
    HComicMapper hComicMapper;
    @Autowired
    HComicTagMapper hComicTagMapper;

    @Override
    public List<HComic> getHComicList(HComicRequestPojo hComicRequest)
    {
        hComicRequest.setLimitSize(20); //一页获取20条数据
        hComicRequest.setLimitBefore((hComicRequest.getPage() - 1) * 20); //当前获取数据之前的空缺 （如第一页空缺0条 第二页空缺20条）
        List<HComic> hComicList = hComicMapper.getHComicList(hComicRequest);
        for(int i = 0;i < hComicList.size();i++)//遍历获取tag
        {
            hComicList.get(i).setHComicTagList(hComicTagMapper.getHComicTagsByComicId(hComicList.get(i).getId()));
        }
        return hComicList;
    }

    @Override
    public HComicData getHComicById(int id)
    {
        HComic comic = hComicMapper.getHComicById(id);
        comic.setHComicTagList(hComicTagMapper.getHComicTagsByComicId(id));
        HComicData data = new HComicData();
        data.setHComic(comic);
        List<String> list = new ArrayList<>();
        for (int i = 1; i <= comic.getPages(); i++) {
            String webp = "/hComic/" + comic.getFileName() + "/" + String.format("%05d.webp", i);
            list.add(webp);
        }
        data.setHComicPages(list);
        return data;
    }

    @Override
    public int getHComicCount(HComicRequestPojo pojo)
    {
        return hComicMapper.getHComicCount(pojo);
    }
}
