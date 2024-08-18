package com.qihang.wms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * Hello world!
 *
 */
@ComponentScan(basePackages={"com.qihang"})
@SpringBootApplication
public class WmsApi
{
    public static void main( String[] args )
    {
        System.out.println( "Hello wms-api!" );
        SpringApplication.run(WmsApi.class, args);
    }
}
