package com.mscgift;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;


@Configuration
public class MyConfiguration {
	
    @Bean
    public JavaMailSender getJavaMailSenderForOTP() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587);
        mailSender.setUsername("piyushfrommasai@gmail.com");
        mailSender.setPassword("msjcchdckflvckgf");
        Properties props = mailSender.getJavaMailProperties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
     // props.put("mail.transport.protocol", "smtp");
     // props.put("mail.debug", "true");
        return mailSender;
        
    }
    
	
	

}
