package com.spring.springboot.hComic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import com.spring.springboot.hComicTag.hComicTagMapper;

import java.text.DecimalFormat;
import java.util.*;

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
        }
        return hComicList;
    }

    @Override
    public hComicData getHComicById(int id)
    {
        hComic comic = hComicMapper.getHComicById(id);
        comic.setHComicTagList(hComicTagMapper.getHComicTagsByComicId(id));
        hComicData data = new hComicData();
        data.setHComic(comic);
        List<String> list = new ArrayList<>();
        for (int i = 1; i <= comic.getPages(); i++) {
            String webp = "/comic/" + comic.getFileName() + "/" + String.format("%05d.webp", i);
            list.add(webp);
        }
        data.setHComicPages(list);
        return data;
    }

    @Override
    public int getHComicCount(hComicRequestPojo pojo)
    {
        return hComicMapper.getHComicCount(pojo);
    }
}
