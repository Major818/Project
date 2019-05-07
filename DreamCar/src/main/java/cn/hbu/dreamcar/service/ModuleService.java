package cn.hbu.dreamcar.service;

import cn.hbu.dreamcar.pojo.Module;
import cn.hbu.dreamcar.pojo.Role;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface ModuleService {

   //查询所有权限模块
   public List<Module> findAllModule();


   //根据id查询权限模块信息
   Module findModuleById(String moduleId);

   //删除权限模块
   void deleteModule(String[] moduleIds);

   //添加权限模块
   void addModule(Module module);

   //修改权限吗模块信息
   void updateModule(Module module,String moduleId);

   //查询moduleId
    List<String> findModuleByRoleId(String roleId);
}
