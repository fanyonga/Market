package com.groupfour.ctrl;

import com.groupfour.entity.Goods;
import com.groupfour.entity.Orders;
import com.groupfour.entity.User;
import com.groupfour.service.GoodsService;
import com.groupfour.service.OrdersService;
import com.groupfour.service.UserService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * 跳转请求类，并实现用户访问权限
 *
 */
@Controller
@RequestMapping("/")
public class JumpCtrl extends BaseCtrl{
    public final Logger logger= LoggerFactory.getLogger(JumpCtrl.class);

    public UserService userService;

    public GoodsService goodsService;

    public OrdersService ordersService;

    @Resource
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Resource
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
    }

    @Resource
    public void setOrdersService(OrdersService ordersService) {
        this.ordersService = ordersService;
    }

    @RequestMapping("index.html")
    public String toIndex(HttpServletRequest request, HttpServletResponse response){
        List<Goods> goodsList=new ArrayList<Goods>();
        for(int i=1;i<=12;i++){
            Goods goods=new Goods();
            goods.setGid(i);
            goods.setPicture("bk"+i+".jpg");
            goods.setPrice(i*100.00);
            goodsList.add(goods);
        }
        request.setAttribute("goodList",goodsList);
        return "index";
    }

    @RequestMapping("login.html")
    public  String toLogin(HttpServletRequest request, HttpServletResponse response){
        String account= (String) request.getSession().getAttribute("account");
        if(StringUtils.isNotBlank(account)){
            return forward("/index.html");
        }
        return "login";
    }

    @RequestMapping("register.html")
    public  String toRegister(HttpServletRequest request, HttpServletResponse response){
        String account= (String) request.getSession().getAttribute("account");
        if(StringUtils.isNotBlank(account)){
            return forward("/index.html");
        }
        return "register";
    }

    @RequestMapping("categories.html")
    public String toCategories(HttpServletRequest request, HttpServletResponse response){
        return "categories";
    }

    @RequestMapping("information.html")
    public String toInformation(HttpServletRequest request, HttpServletResponse response){
        String account= (String) request.getSession().getAttribute("account");
        if(StringUtils.isBlank(account)){
            return redirect("/login.html");
        }
        //购物车的商品列表
        List<Goods> goodsList=new ArrayList<Goods>();

        Cookie[] cookies=request.getCookies();
        for (Cookie cookie:cookies) {
            if(cookie.getName().startsWith(account+"&&goods")){
                String name=cookie.getName().replaceAll(account+"&&goods","");
                if(StringUtils.isNotBlank(name)){
                    int gid=Integer.parseInt(name);
                    Goods goods=goodsService.selectGoodsById(gid);
                    goodsList.add(goods);
                }
            }
        }
        request.setAttribute("cartGoodList",goodsList);
        //已购买的商品列表
        List<Goods> buyedList=ordersService.getGoodsListByUser(account);
        request.setAttribute("buyedList",buyedList);
        //出售的商品列表
        List<Goods> myGoodList=goodsService.getSailedGoodsList(account);
        request.setAttribute("myGoodList",myGoodList);
        //购买中商品的订单
        List<Orders> ordersList=ordersService.getOrderListByBuyer(account);
        request.setAttribute("myOrder",ordersList);
        //受到的订单
        List<Orders> myRecOrder=ordersService.getOrderListBySeller(account);
        request.setAttribute("myRecOrder",myRecOrder);

        logger.info("用户账号为"+account+"的相关信息已加载完毕");
        return "information";
    }

    @RequestMapping("manager.html")
    public String toManager(HttpServletRequest request, HttpServletResponse response){
        String account= (String) request.getSession().getAttribute("account");

        if(StringUtils.isNotBlank(account)){
            User user=userService.selectUserByAccount(account);
            if(user.getRole()==1){
                logger.info("现在管理员："+user.getUsername()+"进入后台管理页面");
                return "manager";
            }
        }
        return redirect("/index.html");
    }

    @RequestMapping("showjudge.html")
    public String toShowJudge(@RequestParam("id") int id,HttpServletRequest request, HttpServletResponse response){
        return "showjudge";
    }

    @RequestMapping("single.html")
    public String toSingle(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response){
        if(id>0){
            Goods goods=goodsService.selectGoodsById(id);
            if(goods!=null){
                logger.info("现在进入商品id="+id+"的详情页面");
                request.setAttribute("goods",goods);
                return "single";
            }
        }
        return redirect("/index.html");
    }
}
