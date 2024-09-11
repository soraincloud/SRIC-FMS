package com.spring.springboot.tools;

import org.springframework.stereotype.Service;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

/**
 * 工具类
 * 读取文件并且获取为字符串
 */

@Service
public class EditFile
{
    public String readFileToString(String filePath) throws IOException
    {
        return new String(Files.readAllBytes(Paths.get(filePath)), StandardCharsets.UTF_8);
    }
}
