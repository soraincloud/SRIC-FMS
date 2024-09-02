package com.spring.springboot.hComic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import com.spring.springboot.hComicTag.HComicTagMapper;

import java.util.*;

/**
 * - - - - - - - - - -
 * H Comic 服务类
 * - - - - - - - - - -
 */

@Service
public class HComicServiceImpl implements HComicService
{
    @Value("${filesPath}") //获取application.properties中的全局变量
    private String filesPath;

    @Autowired
    HComicMapper hComicMapper;
    @Autowired
    HComicTagMapper hComicTagMapper;

    /**
     * @author SRIC
     *
     * 获取 comic 列表数据
     * 获取列表数据并且查询每一条数据的 tag 数据
     * 设置空缺是为了方便 sql 语句进行查询
     */
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

    /**
     * @author SRIC
     *
     * 根据 id 获取 comic
     * 根据 id 查询 comic 已经对应的 tag 列表
     * 根据 comic 的页数 创建一个 list 储存每一张图片的名称 url
     */
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

    /**
     * @author SRIC
     *
     * 获取符合条件的 comic 的条数 用于分页显示传入 total
     */
    @Override
    public int getHComicCount(HComicRequestPojo hComicRequest)
    {
        return hComicMapper.getHComicCount(hComicRequest);
    }
}
