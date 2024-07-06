package com.spring.springboot.tools;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailService
{
    @Autowired
    private JavaMailSender mailSender;

    @Value("${spring.mail.username}") //获取application.properties中的全局变量
    private String fromUsername;

    public void sendEmail(String to, String subject, String text)
    {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(fromUsername);
        message.setTo(to);
        message.setSubject(subject);
        message.setText(text);
        mailSender.send(message);
    }
}
