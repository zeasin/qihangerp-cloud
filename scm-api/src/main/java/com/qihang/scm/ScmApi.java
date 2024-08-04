package com.qihang.scm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * Hello world!
 *
 */
@ComponentScan(basePackages={"com.qihang"})
@SpringBootApplication
public class ScmApi
{
    public static void main( String[] args )
    {
        System.out.println( "Hello scm-api!" );
        SpringApplication.run(ScmApi.class, args);
    }
}
