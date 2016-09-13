package com.groupfour.ctrl;

import com.groupfour.service.GoodsService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by fanyong on 16-9-8.
 */
@Controller
@RequestMapping("/")
public class GoodsCtrl {

    public GoodsService goodsService;

    @Resource
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @RequestMapping("cart.json")
    @ResponseBody
    public Map<Object,String> getGoodList(@RequestParam Map map, HttpServletRequest request, HttpServletResponse response){
        HashMap<Object,String> resultMap=new HashMap<Object, String>();
        String msg="";
        int code=-1;
        if("add".equals(map.get("action"))){
            if(map.get("gid")!=null){
                boolean flag=false;//判断商品是否被添加进cookie中
                String gid=(String)map.get("gid");
                Cookie[] cookies=request.getCookies();
                for(Cookie cookie:cookies){
                    if(cookie.getName().equals(gid)){
                        msg="该宝贝已在购物车中，快去查看";
                        flag=true;
                    }
                }
                if(!flag){
                    response.addCookie(new Cookie(gid,"1"));
                    msg="该宝贝已成功加入购物车~~";
                    code=1;
                }
            }
        }
        else if("remove".equals(map.get("action"))){
            if(map.get("gid")!=null){
                String gid=(String)map.get("gid");
                Cookie[] cookies=request.getCookies();
                for(Cookie cookie:cookies){
                    if(cookie.getName().equals(gid)){
                        msg="该宝贝已被移除购物车";
                        code=1;
                        cookie.setMaxAge(0);
                        response.addCookie(cookie);
                        break;
                    }
                }
            }
        }
        else if("clear".equals(map.get("action"))){
            Cookie[] cookies=request.getCookies();
            for(Cookie cookie:cookies){
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }
            msg="清除购物车成功";
            code=1;
        }
        resultMap.put("msg",msg);
        resultMap.put("code",msg);
        return resultMap;
    }
}
