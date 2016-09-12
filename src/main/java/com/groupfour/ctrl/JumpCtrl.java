package com.groupfour.ctrl;

import com.groupfour.entity.Goods;
import com.groupfour.entity.User;
import com.groupfour.service.GoodsService;
import com.groupfour.service.UserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 跳转请求类，并实现用户访问权限
 *
 */
@Controller
@RequestMapping("/")
public class JumpCtrl extends BaseCtrl{

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
    public String toIndex(){

        return "index";
    }

    @RequestMapping("login.html")
    public  String toLogin(HttpServletRequest request, HttpServletResponse response){
        String account= (String) request.getSession().getAttribute("account");
        if(StringUtils.isNotBlank(account)){
            request.setAttribute("msg","用户已登录");
            return forward("/index.html");
        }
        return "login";
    }

    @RequestMapping("register.html")
    public  String toRegister(HttpServletRequest request, HttpServletResponse response){
        String account= (String) request.getSession().getAttribute("account");
        if(StringUtils.isNotBlank(account)){
            request.setAttribute("msg","用户已登录");
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
    public String toShowJudge(HttpServletRequest request, HttpServletResponse response){
        String account= (String) request.getSession().getAttribute("account");
        if(StringUtils.isBlank(account)){
            return redirect("/login.html");
        }
        return "showjudge";
    }

    @RequestMapping("single.html")
    public String toSingle(@RequestParam("id") int id, HttpServletRequest request, HttpServletResponse response){
        if(id>0){
            Goods goods=goodsService.selectGoodsById(id);
            request.setAttribute("goods",goods);
            return "single";
        }
        return "index";
    }
}
