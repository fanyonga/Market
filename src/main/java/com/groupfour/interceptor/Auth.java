package com.groupfour.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import java.util.Map;

/**
 * Created by fanyong on 16-9-7.
 */
public class Auth extends AbstractInterceptor {

    @Override
    public String intercept(ActionInvocation arg0) throws Exception {
        ActionContext context=arg0.getInvocationContext();
        Map<String, Object> session=context.getSession();
        if(session.get("account")!=null)
        {
            return arg0.invoke();
        }
        return "login";
    }

}
