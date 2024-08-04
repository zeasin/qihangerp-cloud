package com.qihang.auth;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.client.RestTemplate;

/**
 * Hello world!
 *
 */
@EnableFeignClients(basePackages = "com.qihang.auth")
@EnableDiscoveryClient
@ComponentScan(basePackages={"com.qihang"})
@MapperScan("com.qihang.auth.mapper")
@SpringBootApplication
public class AuthApi
{
    public static void main( String[] args )
    {
        System.out.println( "Hello auth-api!" );
        SpringApplication.run(AuthApi.class, args);
    }

    @Bean
    @LoadBalanced
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }
}
