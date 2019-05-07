package cn.hbu.dreamcar.controller;

import cn.hbu.dreamcar.pojo.Email;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EmailController {

    private final Logger logger= LoggerFactory.getLogger(this.getClass());

    @Autowired
    private JavaMailSender mailSender;
    @Value("${mail.fromMail.addr}")
    private String from;

    @RequestMapping("/sedEmail")
    @ResponseBody
    public String sendSimpleMail(){
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(from);
        message.setTo("736490530@qq.com");
        message.setSubject("测试e");
        message.setText("你好！！");
        try {
            mailSender.send(message);
            logger.info("简单邮件已发送。");
        }catch(Exception e){

            logger.error("发送简单邮件时发生异常！。",e);
        }
        return "发送成功！！";

    }


}
