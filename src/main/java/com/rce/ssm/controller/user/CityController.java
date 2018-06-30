package com.rce.ssm.controller.user;

import com.rce.ssm.model.City;
import com.rce.ssm.service.CityService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Firstmetcs on 2018/6/8.
 */

@Controller
@RequestMapping("/city")
public class CityController {

    private Logger log = Logger.getLogger(CityController.class);
    @Resource
    private CityService cityService;

    @RequestMapping("/showCity")
    public String showUser(HttpServletRequest request, Model model){
        log.info("查询所有用户信息");



        List<City> cityList = cityService.selectProvince();
        model.addAttribute("cityList",cityList);
        return "address";
    }

    @RequestMapping("/selectAdd")
    public String selectAdd(HttpServletRequest request, Model model){
        log.info("查询所有用户信息");

        return "selectAdd";
    }

    @RequestMapping("/getProvince")
    @ResponseBody
    public Map<String, List<City>> getProvince(String name){
        List<City> city=cityService.selectProvince();
        System.out.println(city.size());
        System.out.println(name);
        Map<String, List<City>> map = new HashMap<String, List<City>>();
        map.put("city",city);
        return map;
    }

    @RequestMapping("/getCity")
    @ResponseBody
    public Map<String, List<City>> getCity(Integer id){
        log.info("test");
        List<City> city=cityService.selectByPid(id);
        Map<String, List<City>> map = new HashMap<String, List<City>>();
        map.put("city",city);
        return map;
    }

    @RequestMapping("/getArea")
    @ResponseBody
    public Map<String, List<City>> getArea(Integer id){
        List<City> city=cityService.selectByPid(id);
        Map<String, List<City>> map = new HashMap<String, List<City>>();
        map.put("city",city);
        return map;
    }
}
