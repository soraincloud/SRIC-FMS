package com.spring.springboot.hVideo;

import com.spring.springboot.hVideoTag.HVideoTagMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import static com.spring.springboot.tools.ImageToBase64.imageToBase64;

import java.util.List;

@Service
public class HVideoServiceImpl implements HVideoService
{
    @Value("${filesPath}") //获取application.properties中的全局变量
    private String filesPath;

    @Autowired
    HVideoMapper hVideoMapper;
    @Autowired
    HVideoTagMapper hVideoTagMapper;

    @Override
    public List<HVideo> getHVideoList(HVideoRequestPojo hVideoRequest)
    {
        hVideoRequest.setLimitSize(20); //一页获取20条数据
        hVideoRequest.setLimitBefore((hVideoRequest.getPage() - 1) * 20); //当前获取数据之前的空缺 （如第一页空缺0条 第二页空缺20条）
        List<HVideo> hVideoList = hVideoMapper.getHVideoList(hVideoRequest);
        for(int i = 0;i < hVideoList.size();i++)//遍历获取tag
        {
            hVideoList.get(i).setHVideoTagList(hVideoTagMapper.getHVideoTagsByVideoId(hVideoList.get(i).getId()));
            String coverPath = filesPath + "/hVideoCover/" + hVideoList.get(i).getId() + ".webp";
            String imageData = imageToBase64(coverPath);
            if(imageData.isEmpty())
            {
                hVideoList.get(i).setIsVideoCoverNotNull(false);
            }
            else
            {
                hVideoList.get(i).setIsVideoCoverNotNull(true);
                hVideoList.get(i).setVideoCover("data:image/webp;base64," + imageData);
            }
        }
        return hVideoList;
    }

    @Override
    public String getFilenameById(int id)
    {
        return hVideoMapper.getFilenameById(id);
    }

    @Override
    public HVideo getHVideoById(int id)
    {
        HVideo video = hVideoMapper.getHVideoById(id);
        video.setHVideoTagList(hVideoTagMapper.getHVideoTagsByVideoId(id));
        return video;
    }

    @Override
    public int getHVideoCount(HVideoRequestPojo pojo)
    {
        return hVideoMapper.getHVideoCount(pojo);
    }
}
