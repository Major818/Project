package cn.hbu.dreamcar.service;

import cn.hbu.dreamcar.mapper.ModuleMapper;
import cn.hbu.dreamcar.mapper.RoleMapper;
import cn.hbu.dreamcar.pojo.Module;
import cn.hbu.dreamcar.pojo.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2017/10/19.
 */
@Service
public class ModuelServiceImpl implements ModuleService {


    @Autowired
    private ModuleMapper moduleMapper;

    @Override
    public List<Module> findAllModule() {
        return moduleMapper.findAllModule();
    }

    @Override
    public Module findModuleById(String moduleId) {
        return moduleMapper.findModuleById(moduleId);
    }

    @Override
    public void deleteModule(String[] moduleIds) {
        for (String moduleId:moduleIds) {
            moduleMapper.deleteModule(moduleId);
        }
    }

    @Override
    public void addModule(Module module) {

        String id = UUID.randomUUID().toString();

        module.setModuleId(id);

        Date date = new Date();

        module.setCreateTime(date);
        module.setUpdateTime(date);

        moduleMapper.addModule(module);
    }

    @Override
    public void updateModule(Module module,String moduleId) {
        module.setUpdateTime(new Date());
        moduleMapper.updateModule(module,moduleId);
    }

    @Override
    public List<String> findModuleByRoleId(String roleId) {
        return moduleMapper.findModuleByRoleId(roleId);
    }


}
