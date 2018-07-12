package com.rce.ssm.quartz;

import com.rce.ssm.model.goods.Goods;
import com.rce.ssm.service.GoodsService;
import org.apache.lucene.analysis.cn.smart.SmartChineseAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.CorruptIndexException;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.context.ApplicationContext;

import java.io.File;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.util.Iterator;
import java.util.List;

public class IndexUpdateJob implements Job {

    public void execute(JobExecutionContext arg0) throws JobExecutionException {
        // TODO Auto-generated method stub


        SpringContextUtils springContextUtils = new SpringContextUtils();
        ApplicationContext applicationContext = springContextUtils.getApplicationContextNoWeb();
        springContextUtils.setApplicationContext(applicationContext);
        GoodsService goodsService = (GoodsService) SpringContextUtils.getBean("goodsService");
        Directory directory;
        String INDEXDIR = "./lucene_index";
        IndexWriter indexWriter = null;
        try {
            File indexFile = new File(INDEXDIR);
            if (!indexFile.exists())
                indexFile.mkdirs();
            directory = FSDirectory.open(FileSystems.getDefault().getPath(INDEXDIR));
            SmartChineseAnalyzer analyzer = new SmartChineseAnalyzer();
            IndexWriterConfig indexWriterConfig = new IndexWriterConfig(analyzer);
            indexWriter = new IndexWriter(directory, indexWriterConfig);
            indexWriter.deleteAll();//  清除以前的index

            List<Goods> goodsList = goodsService.findAll();
            Iterator<Goods> itr = goodsList.iterator();
            while (itr.hasNext()) {
                Goods goods = itr.next();
                Document document = new Document();

                document.add(new Field("img", goods.getGoodsImg(), TextField.TYPE_STORED));
                document.add(new Field("goodsid", String.valueOf(goods.getGoodsId()), TextField.TYPE_STORED));
                String name = goods.getGoodsName() + goods.getGoodsType();
                document.add(new Field("name", name, TextField.TYPE_STORED));
                String content = goods.getGoodsAttrDesc() + goods.getGoodsCPUDesc() + goods.getGoodsCameraDesc() + goods.getGoodsBatteryDesc();
                document.add(new Field("content", content, TextField.TYPE_STORED));
                document.add(new Field("price", String.valueOf(goods.getGoodsPrice()), TextField.TYPE_STORED));

                indexWriter.addDocument(document);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (indexWriter != null) {
                    indexWriter.close();
                    if (indexWriter == null)
                        System.out.println("indexwriter closed.");
                }
            } catch (CorruptIndexException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

}

