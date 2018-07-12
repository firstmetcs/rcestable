package com.rce.ssm.controller.lucene;

import com.rce.ssm.model.goods.Goods;
import com.rce.ssm.service.GoodsService;
import org.apache.lucene.analysis.cn.smart.SmartChineseAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.CorruptIndexException;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.queryparser.classic.MultiFieldQueryParser;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.highlight.*;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//import org.wltea.analyzer.lucene.IKAnalyzer;

import java.io.File;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Service
public class DBIndexer {
    @Autowired
    private GoodsService goodsService;

    private Directory directory;
    private static String INDEXDIR = "./lucene_index";

    public void createIndex() throws IOException {
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

                document.add(new Field("goodsid", String.valueOf(goods.getGoodsId()), TextField.TYPE_STORED));
                String name = goods.getGoodsName();
                document.add(new Field("name", name, TextField.TYPE_STORED));
                String content = goods.getGoodsAttrDesc()+goods.getGoodsCPUDesc()+goods.getGoodsCameraDesc()+goods.getGoodsBatteryDesc();
                document.add(new Field("content", content, TextField.TYPE_STORED));

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
            }
        }
    }

    public List<Object> doSearch(String keyword, int pageNum) {
        List<Object> rst = new ArrayList<Object>();
        List<Goods> resultInfo = new ArrayList<Goods>();
        String totalResult = null;
        DirectoryReader directoryReader = null;
        try {
            Directory directory = FSDirectory.open(FileSystems.getDefault().getPath(INDEXDIR));
            directoryReader = DirectoryReader.open(directory);
            IndexSearcher indexSearcher = new IndexSearcher(directoryReader);
            SmartChineseAnalyzer analyzer = new SmartChineseAnalyzer();
            QueryParser queryParser = new MultiFieldQueryParser(new String[]{"goodsid", "name", "content"}, analyzer);
            Query query = queryParser.parse(keyword);
            TopDocs topDocs = indexSearcher.search(query, 100);

            Formatter formatter = new SimpleHTMLFormatter("<font color='tomato'>", "</font>");
            Scorer scorer = new QueryScorer(query);
            Highlighter highlighter = new Highlighter(formatter, scorer);

            //手动分页
            int beginrecord = CST.PAGESIZE * (pageNum - 1);
            int endrecord = Math.min(beginrecord + CST.PAGESIZE, topDocs.scoreDocs.length);

            for (int i = beginrecord; i < endrecord; i++) {
                ScoreDoc scoreDoc = topDocs.scoreDocs[i];
                int no = scoreDoc.doc;

                //关键词没有高亮
                Document document = indexSearcher.doc(no);
                //关键词添加高亮
                String titleHighLight = highlighter.getBestFragment(analyzer, "name", document.get("name"));
                String contentHighLight = highlighter.getBestFragment(analyzer, "content", document.get("content"));
                //高亮结果再次塞入
                Goods bi = new Goods();
                bi.setGoodsId(Integer.parseInt(document.get("goodsid")));
                if (titleHighLight != null) {
                    bi.setGoodsName(titleHighLight);
                } else {
                    bi.setGoodsName(document.get("name"));
                }

                if (contentHighLight != null) {
                    bi.setGoodsAttrDesc(contentHighLight);
                } else {
                    String darkContent = document.get("content");
                    if (darkContent.length() > 31) {
                        darkContent = darkContent.substring(0, 30) + "  ...";
                    }
                    bi.setGoodsAttrDesc(darkContent);
                }
                resultInfo.add(bi);
            }

            rst.add(resultInfo);//0.结果列表
            rst.add(topDocs.scoreDocs.length);//1.总结果数
            int ss = topDocs.scoreDocs.length / CST.PAGESIZE;
            int s = (topDocs.scoreDocs.length - ss == 0) ? ss : ss + 1;
            rst.add(s);//2.总页数
            rst.add(((pageNum == 1) ? true : false));//3.首页否
            rst.add(((pageNum == s) ? true : false));//4.尾页否

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (directoryReader != null) {
                    directoryReader.close();
                    if (directoryReader == null)
                        System.out.println("directoryReader closed.");
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return rst;
    }
}
