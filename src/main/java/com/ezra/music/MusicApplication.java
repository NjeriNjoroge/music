package com.ezra.music;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
public class MusicApplication extends SpringBootServletInitializer {
    @Override
    protected  SpringApplicationBuilder configure(SpringApplicationBuilder application){
        return application.sources(MusicApplication.class);
    }
    public static void main(String[] args) throws Exception{
        SpringApplication.run(MusicApplication.class, args);
    }

}
