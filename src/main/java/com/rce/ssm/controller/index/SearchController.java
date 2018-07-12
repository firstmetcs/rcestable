package com.rce.ssm.controller.index;

import com.rce.ssm.controller.lucene.DBIndexer;
import com.rce.ssm.model.goods.Goods;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/*
 * 查找
 *
 */
@Controller
@RequestMapping("/search")
public class SearchController {

    @Autowired
    private DBIndexer dbIndexer;

    private static Logger log = Logger.getLogger(SearchController.class);

    //跳转找回密码页面
    @ResponseBody
    @RequestMapping("index")
    public String toindex(HttpServletRequest request, HttpServletResponse response) {
        try {
            dbIndexer.createIndex();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "success";
    }

    //
    @RequestMapping("search")
    public String search(HttpServletRequest request, HttpServletResponse response, Model model,@RequestParam(defaultValue = "1", required = true, value = "pageNum") Integer pageNum) {

        String keyword = request.getParameter("keyword");
        List<Object> rst = null;
        List<Goods> items = null;
        int total = 0;
        int pages = 0;
        boolean isfirst = true;
        boolean islast = true;

        try {
            rst = dbIndexer.doSearch(keyword, pageNum);
            items = (List<Goods>) rst.get(0);
            total = (Integer) rst.get(1);
            pages = (Integer) rst.get(2);
            isfirst = (Boolean) rst.get(3);
            islast = (Boolean) rst.get(4);
            model.addAttribute("keyword", keyword);
            model.addAttribute("pagenum", pageNum);
            model.addAttribute("totalResult", "共查询到 " + total + " 条商品");
            model.addAttribute("totalpages", pages);
            model.addAttribute("isfirst", isfirst);
            model.addAttribute("islast", islast);
            model.addAttribute("items", items);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "searchResult";
    }

    @RequestMapping("pagesearch")
    public String pagesearch(HttpServletRequest request, HttpServletResponse response, Model model, String pageNum, String keyWord) {

        List<Object> rst = null;
        List<Goods> items = null;
        int total = 0;
        int pages = 0;
        boolean isfirst = true;
        boolean islast = true;

        try {
            rst = dbIndexer.doSearch(keyWord, Integer.parseInt(pageNum));
            items = (List<Goods>) rst.get(0);
            total = (Integer) rst.get(1);
            pages = (Integer) rst.get(2);
            isfirst = (Boolean) rst.get(3);
            islast = (Boolean) rst.get(4);
            model.addAttribute("keyword", keyWord);
            model.addAttribute("pagenum", pageNum);
            model.addAttribute("totalResult", "共查询到 " + total + " 条商品");
            model.addAttribute("totalpages", pages);
            model.addAttribute("isfirst", isfirst);
            model.addAttribute("islast", islast);
            model.addAttribute("items", items);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "searchResult";
    }

}
