package com.rce.ssm.tool;

import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

/**
 * @author xinror
 * @discrition com.rce.ssm.tool
 * @veisiong 1.0
 * @date 2018/6/26
 */
public class UpLoadFile {
    String fileName;
    public String upLoad(HttpServletRequest req,MultipartFile pictureFile,String versionName,int flag)throws IOException {
        //使用UUID给图片重命名，并去掉四个“-”
        // String name = UUID.randomUUID().toString().replaceAll("-", "");
        //获取文件的扩展名
        // System.out.println(pictureFile.getOriginalFilename());
        String ext = FilenameUtils.getName(pictureFile.getOriginalFilename());
        //设置图片上传路径
        String url = req.getSession().getServletContext().getRealPath("/");
         //System.out.println(url);
        String url2=url.substring(0,url.indexOf("target"));
        String newPath="";
        if(flag==0){
            newPath=url2 +"src\\main\\webapp\\img\\goods\\"+versionName;
        }else
        {
            newPath=url2 +"src\\main\\webapp\\img\\goodsAttr\\"+versionName;
        }
        File file = new File(newPath );//定义一个文件流
        file.mkdir();//创建文件夹

        //  System.out.println(url3);
        //以绝对路径保存重名命后的图片
        pictureFile.transferTo(new File(newPath+"/"+ext));
        //  System.out.println(url+ext);
        //把图片存储路径保存到数据库
        return versionName+"/"+ext;
          /*  Thumbnails.of(new File(url3+"/"+ext))
                    .size(700, 700)
                    .toFile(new File(url3+"\\1a_size_2.jpg"));*/

    }
}
