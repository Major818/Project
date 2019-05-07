package cn.hbu.dreamcar.controller;
import cn.hbu.dreamcar.pojo.Car;
import cn.hbu.dreamcar.pojo.Role;
import cn.hbu.dreamcar.pojo.Role;
import cn.hbu.dreamcar.pojo.User;
import cn.hbu.dreamcar.service.RoleService;
import cn.hbu.dreamcar.service.RoleService;
import cn.hbu.dreamcar.service.UserService;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.List;


/**
 * Created by Administrator on 2017/10/19.
 */

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private RoleService roleService;
    //注册
    @RequestMapping("/regist")
    public String regist(User user, Car car, Model model, HttpSession session, HttpServletRequest request){
        System.out.println("进来了");
        //校验验证码是否正确
        String valistr=user.getValistr();
        if(valistr==null){
            model.addAttribute("msg","验证码不能为空");
            return"/user_regist";
        }
        String code = (String) request.getSession().getAttribute("code");
        if(!valistr.equalsIgnoreCase(code)){
            model.addAttribute("msg","验证码不正确！！");
            return"/user_regist";
        }
        userService.saveUser(user,car);
        return"user_login";
    }

    @RequestMapping("/ajaxCheckUsername")
    @ResponseBody
    public String findUserByName(String username){

       String result = userService.findUserName(username);

       return result;
    }




     //登录
    @RequestMapping("/login")
    public String login(String username, String password, String remname, Model model,
                        String autologin ,HttpServletResponse response, HttpServletRequest request) throws UnsupportedEncodingException {

        User user  = userService.findUser(username,password);
        if(user ==null){
            model.addAttribute("result","用户名或密码错误！！");
            return"user_login";
        }
        //记住用户名
        if ("true".equals(remname)) {
            Cookie cookie = new Cookie("remname",username);
            cookie.setPath(request.getContextPath() + "/");
            cookie.setMaxAge(3600 * 24 * 30);
            response.addCookie(cookie);
        } else {// 取消记住用户名(删除Cookie)
            Cookie cookie = new Cookie("remname", "");
            cookie.setPath(request.getContextPath() + "/");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
        //30天自动登录
        if ("true".equals(autologin)) {// 实现30天自动登陆
            // 将用户名和密码保存进Cookie中
            Cookie c = new Cookie("autologin", URLEncoder.encode(username+":"+password,"UTF-8"));
            c.setMaxAge(60 * 60 * 24 * 30);// 保存Cookie30天
            c.setPath(request.getContextPath() + "/");
            // 将Cookie发送给浏览器
            response.addCookie(c);
        } else {// 取消30天自动登陆
            Cookie c = new Cookie("autologin", "");
            c.setMaxAge(0);// 设置为0立即删除
            c.setPath(request.getContextPath() + "/");
            response.addCookie(c);
        }

        // 6.进行登陆
        request.getSession().setAttribute("user", user);

        return"index";
    }

    //退出
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request,HttpServletResponse response){
        //杀死session
        request.getSession().invalidate();

        //如果用户点击退出按钮, 默认是取消自动登陆, 即删除自动登陆Cookie
        Cookie c = new Cookie("autologin", "");
        c.setMaxAge(0);// 设置为0立即删除
        c.setPath(request.getContextPath() + "/");
        response.addCookie(c);

        return "index";
    }


    //用户管理：查询所有用户信息
    @RequestMapping("/userlist")
    public String findAll(Model model){
        List<User> userList = userService.findAll();
        model.addAttribute("userList",userList);

        return "back/user_list";
    }
    //用户管理：用户删除
    @RequestMapping("/toUserDelete")
    public String toDelete(@RequestParam("userId")String[] userIds){
        userService.deleteUsers(userIds);

        //跳转到用户列表页面
        return "redirect:/userlist";
    }



    //用户管理;新增用户
    @RequestMapping("/toUserCreate")
    public String toCreate(Model model){
        //准备角色列表信息
        List<Role> roleList = roleService.findAll();

        model.addAttribute("roleList",roleList);
        return "back/user_add";
    }
    @RequestMapping("/toUserCreate2")
    public String saveUser(User user){

        userService.saveUsers(user);
        return "redirect:/userlist";
    }

}

