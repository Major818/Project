package cn.hbu.dreamcar.mapper;

import cn.hbu.dreamcar.pojo.Module;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ModuleMapper {
    public List<Module> findAllModule();

    public Module findModuleById(String moduleId);

    public void deleteModule(String moduleId);

    public void addModule(Module module);

    public void updateModule(@Param("module") Module module,@Param("moduleId") String moduleId);


    public List<String> findModuleByRoleId(String roleId);
}
