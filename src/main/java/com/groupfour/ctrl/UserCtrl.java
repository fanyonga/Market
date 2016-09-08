package com.groupfour.ctrl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.groupfour.entity.User;
import com.groupfour.service.UserService;
import com.groupfour.util.ValidateUtil;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Time;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 用户数据后台接口
 */
@Controller
@RequestMapping("/")
public class UserCtrl extends BaseCtrl{

    private static final Logger log = LoggerFactory.getLogger(UserCtrl.class);

    private UserService userService;

    @Resource
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String toIndex(){
        return "index";
    }

    @RequestMapping("loginJudge")
    public String login(@RequestParam("account") String account,@RequestParam("password") String password, HttpServletRequest request) {
        if(StringUtils.isNotBlank(account) && StringUtils.isNotBlank(password)){
            User user=new User();
            user.setAccount(account);
            user.setPassword(password);
            User actualUser=userService.userLogin(user);
            if(actualUser!=null){
                request.getSession().setAttribute("account",actualUser.getAccount());
                return redirect("/categories.html");
            }
        }
        request.getSession().setAttribute("msg","登陆失败请检查用户名和密码");
        return redirect("/login.html");
    }

    @RequestMapping("loginOut")
    @ResponseBody
    public void loginOut(HttpServletRequest request, HttpServletResponse response){
        if(request.getSession().getAttribute("account")!=null){
            request.getSession().setAttribute("account",null);
        }
    }

    @RequestMapping("register.json")
    @ResponseBody
    public Map<String, Object> register(@RequestParam Map param) {
        String errMsg = validate(param);

        log.info("register error:{}", errMsg);
        int errCode = -1;

        Map<String, Object> result = new HashMap<String, Object>();
        if (StringUtils.isBlank(errMsg)) {

            JSONObject jsonObject = new JSONObject(param);
            User user = JSON.toJavaObject(jsonObject, User.class);
            if (userService.userIsExist(user)) {
                errMsg = "账号已存在！";
            } else {
                user.setRole(0);
                user.setTime(new Time(new Date().getTime()));
                try {
                    userService.userRegister(user);
                    errCode = 1;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        result.put("errMsg", errMsg);
        result.put("errCode", errCode);

        return result;
    }

    public String validate(Map<String, String> map) {


        String account = map.get("account");
        String email = map.get("email");
        String password = map.get("password");

        if (StringUtils.isBlank(account))
            return "请输入账号";
        if (!ValidateUtil.checkUserName(account))
            return "账号格式错误";
        if (StringUtils.isBlank(email))
            return "请输入邮箱";
        if (!ValidateUtil.isEmail(email))
            return "邮箱无效";
        if (StringUtils.isBlank(password))
            return "请输入密码";
        if (!ValidateUtil.checkPwd(password))
            return "密码格式错误(6-16位)";
        return "";
    }

}
