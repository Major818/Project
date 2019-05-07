package cn.hbu.dreamcar.controller;


import cn.hbu.dreamcar.pojo.Module;
import cn.hbu.dreamcar.service.ModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ModuleController {

    @Autowired
    private ModuleService moduleService;

    @RequestMapping("findModule")
    public String findAllModule(Model model){

        List<Module> moduleList = moduleService.findAllModule();

        model.addAttribute("moduleList",moduleList);

        return "back/module/module_list";
    }

    @RequestMapping("toModuleView")
    public String toModuleView(Model model,String moduleId){

        Module module = moduleService.findModuleById(moduleId);

        model.addAttribute("module",module);

        return "back/module/module_view";
    }

    @RequestMapping("toModuleDelete")
    public String toModuleDelete(@RequestParam("moduleId") String[] moduleIds){

        moduleService.deleteModule(moduleIds);

        return "redirect:/findModule";
    }

    @RequestMapping("toModuleCreate")
    public String toModuleCreate(Model model){

        List<Module> pList = moduleService.findAllModule();

        model.addAttribute("pList",pList);

        return "back/module/module_create";
    }


    @RequestMapping("toModuleCreate2")
    public String toModuleCreate2(Module module){

        moduleService.addModule(module);

        return "redirect:/findModule";
    }

    @RequestMapping("toModuleUpdate")
    public String toModuleUpdate(Model model,String moduleId){

        Module module = moduleService.findModuleById(moduleId);

        List<Module> pList = moduleService.findAllModule();

        model.addAttribute("module",module);

        model.addAttribute("pList",pList);

        return "back/module/module_update";
    }

    @RequestMapping("toModuleUpdate2")
    public String toModuleUpdate2(Module module,String moduleId){
        moduleService.updateModule(module,moduleId);
        return "redirect:/findModule";
    }
}
