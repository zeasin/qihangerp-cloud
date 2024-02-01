package tech.qihangec.erp.service.sys;

import org.apache.dubbo.config.spring.context.annotation.EnableDubbo;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@EnableDubbo
@SpringBootApplication
public class SysApp
{
    public static void main( String[] args )
    {
        System.out.println( "Hello SYS!" );
        SpringApplication.run(SysApp.class, args);
    }
}
