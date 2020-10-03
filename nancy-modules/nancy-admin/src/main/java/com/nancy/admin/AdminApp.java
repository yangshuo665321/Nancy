package com.nancy.admin;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * 系统模块启动项
 *
 * @author yangshuo
 * @Description 系统模块启动项
 * @Date 2020/9/27
 * @Version 1.0
 */
@SpringBootApplication
@EnableSwagger2
@MapperScan("com.nancy.admin.mapper")
public class AdminApp {

    public static void main(String[] args) {
        SpringApplication.run(AdminApp.class);
    }

}
