package com.spring.springboot.tools;

import org.springframework.stereotype.Service;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
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
    /**
     * @author SRIC
     *
     * 读取文件并传回字符串
     */
    public String readFileToString(String filePath) throws IOException
    {
        System.out.println("读取文件 :" + filePath);
        return new String(Files.readAllBytes(Paths.get(filePath)), StandardCharsets.UTF_8);
    }

    /**
     * @author SRIC
     *
     * 收到字符串并将字符串写入文件
     */
    public boolean writeFile(String filePath, String content)
    {
        System.out.println("写入文件 :" + filePath);
        try(OutputStreamWriter writer = new OutputStreamWriter(new FileOutputStream(filePath, false), "UTF-8"))
        {
            writer.write(content);
            return true;
        }
        catch (IOException e)
        {
            e.printStackTrace();
            return false;
        }
    }
}
