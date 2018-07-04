package cn.tedu.dreamcar;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;


/**
 * Created by Administrator on 2017/10/19.
 */
@EnableTransactionManagement
@SpringBootApplication
@ServletComponentScan
@MapperScan("cn.tedu.dreamcar.mapper") //扫描接口为接口创建代理对象那个
public class SpringBoot {

    public static void main(String args[]){
        SpringApplication.run(SpringBoot.class,args);
    }
}
