package com.spring.springboot.tools;

import org.springframework.stereotype.Service;

import java.io.File;
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
    public String readFileToString(String filePath)
    {
        System.out.println("读取文件 :" + filePath);
        try
        {
            return new String(Files.readAllBytes(Paths.get(filePath)), StandardCharsets.UTF_8);
        }
        catch(IOException e)
        {
            System.out.println("ERROR : 读取文件失败");
            e.printStackTrace(); //打印异常堆栈信息
            return "READ FILE ERROR";
        }
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
            System.out.println("ERROR : 写入文件失败");
            e.printStackTrace(); //打印异常堆栈信息
            return false;
        }
    }

    /**
     * @author SRIC
     *
     * 创建文件
     * 文件名为 filename
     * 创建位置为 filepath
     */
    public boolean createFile(String filename,String filepath)
    {
        System.out.println("创建文件 :" + filepath + filename);
        try
        {
            File file = new File(filepath,filename);
            if(!file.exists())
            {
                boolean isCreated = file.createNewFile();
                if(!isCreated)
                {
                    System.out.println("ERROR : 创建失败,文件已存在");
                    return false;
                }
            }
            return true;
        }
        catch(IOException e)
        {
            System.out.println("ERROR : 创建文件失败");
            e.printStackTrace(); //打印异常堆栈信息
            return false;
        }
    }

}
