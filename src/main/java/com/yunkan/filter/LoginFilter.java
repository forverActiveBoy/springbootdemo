package com.yunkan.filter;

import org.springframework.context.annotation.Configuration;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
//声明为配置类，加载到SpringBoot工厂中
@Configuration
//指定拦截路径，四种匹配方式
@WebFilter(urlPatterns = {"*.jsp"})
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        //获取请求路径中，除了http://ip:port的部分。比如/agent/agent.jsp
        String currentURL = req.getRequestURI();
        HttpSession session = req.getSession();
        String username = (String)session.getAttribute("username");
        //判定请求路径不是登陆页面并且用户名为空,则重定向到登陆界面
        if(!"/login.jsp".equals(currentURL) & username == null){
                //重定向到登陆界面
                res.sendRedirect("/login.jsp");
        }else {
            //放行操作
            chain.doFilter(req,res);
        }
    }

    @Override
    public void destroy() {
    }
}
