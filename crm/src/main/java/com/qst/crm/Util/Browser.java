package com.qst.crm.Util;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringBootConfiguration;
@SpringBootConfiguration
public class Browser implements CommandLineRunner {
    //注入项目的端口号
    @Value("${server.port}")
    private String port;
    /**
     springboot自带的监听任务
     @param args
     @throws Exception
     */
    @Override
    public void run(String... args) throws Exception {
        try {
            Runtime.getRuntime().exec("cmd /c start http://localhost:" + port+"/login/showlogin");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}

