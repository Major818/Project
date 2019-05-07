package cn.hbu.dreamcar.controller;


import cn.hbu.dreamcar.pojo.Module;
import cn.hbu.dreamcar.pojo.Role;
import cn.hbu.dreamcar.service.ModuleService;
import cn.hbu.dreamcar.service.RoleService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class RoleController {

    @Autowired
    private RoleService roleService;

    @Autowired
    private ModuleService moduleService;

    @RequestMapping("/toBackIndex")
    public String index(){

        return "back/index";
    }

    //跳转查看页面
    @RequestMapping("toRoleView")
    public String toRoleView(String roleId ,Model model){

        Role role = roleService.findRoleById(roleId);

        model.addAttribute("role",role);

        return "back/role/role_view";
    }

    @RequestMapping("/roleList")
    public String findAll(Model model){

        List<Role> roleList = roleService.findAll();

        model.addAttribute("roleList",roleList);

        return "back/role/role_list";
    }

    @RequestMapping("toRoleCreate")
    public String createR(){

        return "back/role/role_create";
    }

    @RequestMapping("toRoleCreate2")
    public String createRole(Role role){

        roleService.addRole(role);


        return "redirect:/roleList";
    }

    @RequestMapping("/toRoleDelete")
    public String deleteRole(String roleId){

        roleService.deleteRole(roleId);

        return "redirect:/roleList";
    }

    @RequestMapping("/toRoleUpdate")
    public String updateRole(String roleId,Model model){

        Role role = roleService.findRoleById(roleId);

        model.addAttribute("role",role);

        return "back/role/role_update";
    }
   @RequestMapping("/toRoleUpdate2")
    public String updateRole(String roleId,Role role){

        roleService.updateRole(roleId,role);

        return "redirect:/roleList";
    }

    @RequestMapping("toRoleModule")
    public String toRoleModule(String roleId,Model model) throws JsonProcessingException {



        //1.准备全部的模块列表信息
        List<Module> moduleList = moduleService.findAllModule();

        List<String> mList =  moduleService.findModuleByRoleId(roleId);

        for (Module module:moduleList) {

            if (mList.contains(module.getModuleId())){
                    model.addAttribute("mList",mList);
            }
        }


        //4.将roleId进行转向处理
        model.addAttribute("roleId", roleId);


       model.addAttribute("modulelist",moduleList);

        return "back/role/role_module";
    }

    @RequestMapping("toRoleModule2")
    public String toRoleModule2(String roleId,String[] moduleIds){

        roleService.saveModuleRole(roleId,moduleIds);

        return "redirect:/roleList";
    }

}
