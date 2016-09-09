package com.groupfour.ctrl;

import com.groupfour.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by fanyong on 16-9-8.
 */
//@Controller
//@RequestMapping("/")
//public class GoodsCtrl {
//
//    public GoodsService goodsService;
//
//    @Resource
//    public void setGoodsService(GoodsService goodsService) {
//        this.goodsService = goodsService;
//    }
//
//    @RequestMapping("goodList.json")
//    public Map<Object,String> getGoodList(@RequestParam("id") int id){
//        Map<Object,String> map=new HashMap<Object, String>();
//        return map;
//    }
//}
