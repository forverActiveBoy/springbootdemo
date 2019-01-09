package com.yunkan;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RestController;

/*指定Filter的路径*/
@ServletComponentScan(basePackages = {"com.yunkan.filter.LoginFilter"})
/*开启事物注解*/
@EnableTransactionManagement
/*告诉SpringBoot的dao接口位置*/
@MapperScan("com.yunkan.dao")
@SpringBootApplication
public class SpringbootdemoApplication {
    public static void main(String[] args) {
        SpringApplication.run(SpringbootdemoApplication.class, args);
    }

}

