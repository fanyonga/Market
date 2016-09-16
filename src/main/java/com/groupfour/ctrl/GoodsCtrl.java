package com.groupfour.ctrl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.groupfour.entity.Classify;
import com.groupfour.entity.Goods;
import com.groupfour.entity.User;
import com.groupfour.service.GoodsService;
import com.groupfour.service.UserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * Created by fanyong on 16-9-8.
 */
@Controller
@RequestMapping("/")
public class GoodsCtrl extends BaseCtrl{

    public GoodsService goodsService;

    public UserService userService;

    @Resource
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @Resource
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("cart.json")
    @ResponseBody
    public Map<Object,String> getGoodList(@RequestParam Map map, HttpServletRequest request, HttpServletResponse response){
        HashMap<Object,String> resultMap=new HashMap<Object, String>();
        String msg="";
        String account=(String)request.getSession().getAttribute("account");
        if(StringUtils.isEmpty(account)){
            msg="用户请先登陆";
        }
        else{
            if("add".equals(map.get("action"))){
                if(map.get("gid")!=null){
                    boolean flag=false;//判断商品是否被添加进cookie中
                    String gid=(String)map.get("gid");
                    Cookie[] cookies=request.getCookies();
                    for(Cookie cookie:cookies){
                        if(cookie.getName().startsWith(account+"&&goods") && cookie.getName().replace(account+"&&goods","").equals(gid)){
                            msg="该宝贝已在购物车中，快去查看";
                            flag=true;
                        }
                    }
                    if(!flag){
                        response.addCookie(new Cookie(account+"&&goods"+gid,"1"));
                        msg="该宝贝已成功加入购物车~~";
                    }
                }
            }
            else if("remove".equals(map.get("action"))){
                if(map.get("gid")!=null){
                    String gid=(String)map.get("gid");
                    Cookie[] cookies=request.getCookies();
                    for(Cookie cookie:cookies){
                        if(cookie.getName().startsWith(account+"&&goods") && cookie.getName().replace(account+"&&goods","").equals(gid)){
                            msg="该宝贝已被移除购物车";
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
                    if(cookie.getName().startsWith(account+"&&goods")){
                        cookie.setMaxAge(0);
                        response.addCookie(cookie);
                    }
                }
                msg="清除购物车成功";
            }
        }
        resultMap.put("msg",msg);
        return resultMap;
    }

    @RequestMapping("checkGoods.json")
    @ResponseBody
    public Map<Object,String> checkGoods(@RequestParam(value = "id") int id,HttpServletRequest request){
        Map<Object,String> map=new HashMap<Object,String>();
        String msg="";
        String account=(String)request.getSession().getAttribute("account");
        if(account!=null){
            User user=userService.selectUserByAccount(account);
            if(user!=null && user.getRole()==1){
                Goods goods=goodsService.selectGoodsById(id);
                goods.setState(0);
                goods.setRtime(new Date());
                goodsService.updateGoodsState(account,goods);
                msg="该商品已审核通过";
            }
            else {
                msg="操作非法";
            }
        }
        else {
            msg="用户请先登陆";
        }

        map.put("msg",msg);
        return map;
    }

    @RequestMapping("addGoodInfo")
    public String getGoodsInfo(@RequestParam("file") MultipartFile file,@RequestParam Map map,HttpServletRequest request) throws IOException{
        String msg=validateGoodsInfo(map);
        if("".equals(msg)){
            if(file!=null) {
                //获得物理路径webapp所在路径
                String pathRoot = request.getSession().getServletContext().getRealPath("/");
                String uuid = UUID.randomUUID().toString().replaceAll("-", "");
                String contentType = file.getContentType();
                //获得文件后缀名称
                String imageName = contentType.substring(contentType.indexOf("/") + 1);
                String path = uuid + "." + imageName;

                //保存在${tomcat-home)/webapp/ROOT/static/images/文件夹下
                file.transferTo(new File(pathRoot + "/static/images/" + path));

                Classify classify = new Classify();
//                classify.setCid(Integer.parseInt((String)(String)map.get("classify")));
//                map.remove("classify");
                classify.setCid(1);

                JSONObject jsonObject=new JSONObject(map);
                Goods goods=JSON.toJavaObject(jsonObject,Goods.class);

                User user = userService.selectUserByAccount((String) request.getSession().getAttribute("account"));
                goods.setUser(user);
                goods.setPicture(path);
                goods.setCtime(new Date());
                goods.setState(0);

                goods.setClassify(classify);
                goodsService.insertGoods(goods);
                msg = "商品添加成功";
            }
            else {
                msg="请添加合法的图片";
            }
        }

        System.out.println(msg);
        request.getSession().setAttribute("msg",msg);
        return redirect("/information.html#parentVerticalTab3");
    }

    public String validateGoodsInfo(Map map){
//        String classify=(String)map.get("classify");
        String gname=(String)map.get("gname");
        String price=(String)map.get("price");
        String stock=(String)map.get("stock");
        String descript=(String)map.get("descript");

        if(StringUtils.isEmpty(gname)) return "商品名不能为空";
//        if(StringUtils.isEmpty(classify)) return "请选择商品分类";
        if(StringUtils.isEmpty(price)) return "请输入合法的商品单价";
        if(StringUtils.isEmpty(stock)) return "存货量不能小于1";
        if(StringUtils.isEmpty(descript)) return "商品描述不能为空";

        return "";
    }
}
