package com.groupfour.ctrl;


public class BaseCtrl {
    public String redirect(String url) {
        return "redirect:" + url;
    }
    public String forward(String url){
        return "forward:" + url;
    }
}
