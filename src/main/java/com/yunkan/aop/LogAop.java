package com.yunkan.aop;

import com.yunkan.annotation.LogAnnotation;
import com.yunkan.dao.LogDao;
import com.yunkan.entity.Log;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
//SpringBoot默认是cglib代理方式，所以，SpringBoot采用切注解的切入点表达式
//配置类注解，告诉SpringBoot,这是个配置类
@Configuration
//切面注解
@Aspect
public class LogAop {
    @Autowired
    private LogDao logDao;
    //切入点注解
    @Pointcut("@annotation(com.yunkan.annotation.LogAnnotation)")
    public void pointCut(){
    }
    @Around(value = "pointCut()")
    public Object LogIntercept(ProceedingJoinPoint proceedingJoinPoint)throws Throwable{
        //创建一个日志对象
        Log log = new Log();
        //获取到当前执行的方法
        MethodSignature signature = (MethodSignature) proceedingJoinPoint.getSignature();
        Method method = signature.getMethod();
        LogAnnotation annotation = method.getAnnotation(LogAnnotation.class);
        String value = annotation.value();
        log.setDoWhat(value);
        log.setOperator("sysadmin");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        log.setTime(df.format(new Date()));
        logDao.insertLog(log);
        //放行操作
        Object proceed = proceedingJoinPoint.proceed();
        return proceed;
    }
}
