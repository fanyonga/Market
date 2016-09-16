package com.groupfour.ctrl;


/**
 * 控制器基类，主要实现跳转和转发的功能
 *
 */
public class BaseCtrl {
    public String redirect(String url) {
        return "redirect:" + url;
    }
    public String forward(String url){
        return "forward:" + url;
    }
}
