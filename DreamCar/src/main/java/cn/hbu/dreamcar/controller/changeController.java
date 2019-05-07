package cn.hbu.dreamcar.controller;

import cn.hbu.dreamcar.pojo.User;
import cn.hbu.dreamcar.service.UserService;
import cn.hbu.dreamcar.utils.VerifyCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

import static javafx.scene.input.KeyCode.H;
import static javafx.scene.input.KeyCode.M;
import static javafx.scene.input.KeyCode.R;

/**
 * Created by Administrator on 2017/10/19.
 */
@Controller
public class changeController {
    @Autowired
    private VerifyCode vc;

    @RequestMapping("/tobacklogin")
    public String tobacklogin(){

        return"back/index";
    }
    @RequestMapping("/toactive")
    public String toactive(){

        return "active";
    }
    @RequestMapping("/index")
    public String toindex(){

        return"index";
    }
    @RequestMapping("/toregist")
    public String toRegist() {

        return "user_regist";
    }

    @RequestMapping("/tologin")
    public String tologin(){

        return"user_login";
    }
    @RequestMapping("/overview")
    public  String overview(){

        return"overview";
    }

    @RequestMapping("/single")
    public String single(){

        return"single";
    }
    @RequestMapping("/contact")
    public String contact(){

        return"contact";
    }
    @RequestMapping("/prod")
    public String prodList(){

        return"prod_list";
    }


    //将验证码图片响应到浏览器
    @RequestMapping("/img")
    public void img(HttpServletResponse response, Model model, HttpSession session) throws IOException {

        //控制浏览器不要缓存验证码图片
        response.setDateHeader("Expires", -1);
        response.setHeader("Cache-Control", "no-cache");
        //将图片保存到response缓冲区中, 再响应给浏览器
        vc.drawImage(response.getOutputStream());

        //获取图片上的验证码
        String code = vc.getCode();
        session.setAttribute("code",code);

    }


}



