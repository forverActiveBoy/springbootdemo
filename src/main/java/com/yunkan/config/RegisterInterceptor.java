package com.yunkan.config;

import com.yunkan.interceptor.LoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.*;

//加载到SpringBoot工厂中
@Configuration
//注册拦截器
public class RegisterInterceptor implements WebMvcConfigurer{
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        LoginInterceptor loginInterceptor = new LoginInterceptor();
        InterceptorRegistration registration = registry.addInterceptor(loginInterceptor);
        //拦截路径
        registration.addPathPatterns("/log/selectByPage.do");
        //不拦截路径
        registration.excludePathPatterns("/bmAgent/selectByPage.do");
    }
}
