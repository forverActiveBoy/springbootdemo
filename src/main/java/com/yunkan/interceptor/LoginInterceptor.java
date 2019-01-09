package com.yunkan.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//按照SpringMvc的方式实现一个拦截器操作
public class LoginInterceptor implements HandlerInterceptor {
    //执行controller之前执行这个方法
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("执行了拦截器操作");
        HttpSession session = request.getSession();
        String name = (String)session.getAttribute("name");
        if(name == null){
            //返回false则不执行controller
            return false;
        }
        //返回true则执行controller
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
