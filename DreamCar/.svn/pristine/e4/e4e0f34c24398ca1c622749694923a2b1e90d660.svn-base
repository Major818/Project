package cn.tedu.dreamcar.controller;

import cn.tedu.dreamcar.pojo.Product;
import cn.tedu.dreamcar.service.ProdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
@Controller
public class ProdController {
    @Autowired
    private ProdService prodService;
    @RequestMapping("/findProd")
    public String findProd(Model model){
        List<Product> prodList = prodService.findProd();
        model.addAttribute("prodList",prodList);
        return "/back/prod_list";
    }
    @RequestMapping("/toupdate")
    @ResponseBody
    public String  updatateNum(  Integer pid, Integer pnum){
        boolean ok = prodService.updateNum(pid,pnum);
        return "true";
    }

    @RequestMapping("todel")
    @ResponseBody
    public String delProd(Integer pid){
        boolean ok = prodService.delProd(pid);
        if(ok){
            return "true";
        }
       return "false";
    }
}
