package com.groupfour.ctrl;

import com.groupfour.entity.Goods;
import com.groupfour.entity.Orders;
import com.groupfour.entity.User;
import com.groupfour.service.GoodsService;
import com.groupfour.service.UserService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
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

    @Resource
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Resource
    public void setGoodsService(GoodsService goodsService) {
        this.goodsService = goodsService;
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
//        String account= (String) request.getSession().getAttribute("account");
//        if(StringUtils.isBlank(account)){
//            return redirect("/login.html");
//        }
        List<Goods> buyedList=new ArrayList<Goods>();
        for(int i=1;i<=12;i++){
            Goods goods=new Goods();
            goods.setGid(i);
            goods.setPicture("bk"+i+".jpg");
            goods.setPrice(i*100.00);
            buyedList.add(goods);
        }
        request.setAttribute("buyedList",buyedList);
        request.setAttribute("myGoodList",buyedList);

        User user=new User();
        user.setUsername("张三");
        user.setPhone("13512341234");
        user.setAddress("湖北神武汉市");
        Goods goods=new Goods();
        goods.setUser(user);
        goods.setGname("商品1");
        goods.setPicture("bk1.jpg");
        goods.setPrice(800.00);
        goods.setGid(1);
        Orders order=new Orders();
        order.setUser(user);
        order.setNumber(3);
        order.setGoods(goods);
        List<Orders> ordersList=new ArrayList<Orders>();
        ordersList.add(order);
        request.setAttribute("myOrder",ordersList);
        request.setAttribute("myRecOrder",ordersList);
        return "information";
    }

    @RequestMapping("manager.html")
    public String toManager(HttpServletRequest request, HttpServletResponse response){
        String account= (String) request.getSession().getAttribute("account");
        if(StringUtils.isNotBlank(account)){
            User user=userService.selectUserByAccount(account);
            if(user.getRole()==1){
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
//            Goods goods=goodsService.selectGoodsById(id);
            logger.info("现在进入商品id="+id+"的详情页面");
            User user=new User();
            user.setUsername("张三");
            user.setPhone("13512341234");
            Goods goods=new Goods();
            goods.setUser(user);
            goods.setPicture("bk1.jpg");
            goods.setDescript("这是商品"+id+"的详情描叙");
            goods.setPrice(800.00);
            goods.setGid(id);
            request.setAttribute("goods",goods);
            return "single";
        }
       return "index";
    }
}
