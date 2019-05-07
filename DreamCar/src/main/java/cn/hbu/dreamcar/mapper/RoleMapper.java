package cn.hbu.dreamcar.mapper;

import cn.hbu.dreamcar.pojo.Role;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleMapper {

    public List<Role> findAll();

    public Role findRoleById(String roleId);

    void addRole(Role role);

    void deleteRole(String roleId);

    void updateRole(@Param("roleId") String roleId,@Param("role") Role role);

    void saveModuleRole(@Param("roleId") String roleId, @Param("moduleId") String moduleId);

    @Delete("delete from role_module_p where role_id = #{roleId}")
    void deleteByRoleId(String roleId);
}
