package com.spring.springboot.tools;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

/**
 * 工具类
 * 将图片文件转化为字节数组字符串，并对其进行Base64编码处理
 */

public class ImageToBase64
{
    public static String imageToBase64(String path)
    {
        byte[] data = null;
        //检查文件是否存在
        File file = new File(path);
        if (!file.exists()) {
            return ""; // 如果文件不存在，返回空字符串
        }
        // 读取图片字节数组
        try {
            InputStream in = new FileInputStream(path);
            data = new byte[in.available()];
            in.read(data);
            in.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        // 对字节数组Base64编码
        Base64.Encoder encoder = Base64.getEncoder();
        return encoder.encodeToString(data);
    }
}
