package com.yunkan.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
//这个元注解指定自定义注解的使用位置
@Target(ElementType.METHOD)
//这个元注解指定自定义注解在项目运行时有效
@Retention(RetentionPolicy.RUNTIME)
public @interface LogAnnotation {
    String value() default "";
}
