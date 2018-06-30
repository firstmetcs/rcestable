package com.rce.ssm.controller.user;

import com.rce.ssm.model.Address;
import com.rce.ssm.model.User;
import com.rce.ssm.service.AddressService;
import com.rce.ssm.service.CityService;
import com.rce.ssm.tool.PublicStatic;
import com.rce.ssm.tool.Tool;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Controller
@RequestMapping("/address")
public class AddressController {

    private Logger log = Logger.getLogger(AddressController.class);
    @Resource
    private AddressService addressService;
    @Resource
    private CityService cityService;

    @RequestMapping("/showAddress")
    public String showUser(HttpServletRequest request, Model model){
        log.info("查询所有用户信息");

        List<Address> addressList = addressService.selectByUserId(((User)request.getSession().getAttribute(PublicStatic.USER)).getUserid());
//
//        for (int i = 0; i < addressList.size(); i++) {
//            addressList.get(i).setProvince(cityService.selectByPrimaryKey(addressList.get(i).getProvinceid()).getName());
//            addressList.get(i).setCity(cityService.selectByPrimaryKey(addressList.get(i).getCityid()).getName());
//            addressList.get(i).setArea(cityService.selectByPrimaryKey(addressList.get(i).getAreaid()).getName());
//        }
//

        model.addAttribute("addressList",addressList);
        return "showAddress";
    }

    @RequestMapping("/add")
    public String showUser(HttpServletRequest request, Model model,Address address){
        log.info("查询所有用户信息");



        address.setUserid(((User)request.getSession().getAttribute(PublicStatic.USER)).getUserid());
        address.setUsername(address.getUsername());
        address.setUserphone(address.getUserphone());
        address.setCreatetime(Tool.getDate());
        address.setPostcode(address.getPostcode());
        address.setIsdefault(0);
        address.setAddressflag(0);

        addressService.insertSelective(address);

        return "redirect: showAddress";
    }
}
