package cn.tedu.dreamcar.controller;

import cn.tedu.dreamcar.pojo.Reservation;
import cn.tedu.dreamcar.service.DateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by Administrator on 2017/10/20.
 */
@Controller
public class DateController {
    @Autowired
    private DateService dateService;


    //跳转回主页
    @RequestMapping("/index2")
    public String insert(Reservation reservation){

        dateService.insertDate(reservation);
        return "index";
    }
    @RequestMapping("findDate")
    public String findDate(Model model){
        List<Reservation> reservationList = dateService.findDate();
        model.addAttribute("reservationList",reservationList);
        return"/back/date_list";
    }

    @RequestMapping("delDate")
    @ResponseBody
    public String delDate(String pid){
        boolean ok = dateService.delDate(pid);
        if(ok){
            return "true";
        }
        return "false";
    }
}
