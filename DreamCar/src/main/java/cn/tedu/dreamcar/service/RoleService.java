package cn.tedu.dreamcar.service;

import cn.tedu.dreamcar.pojo.Product;
import cn.tedu.dreamcar.pojo.Role;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface RoleService {
   public List<Role> findAll();

   public Role findRoleById(String roleId);

   void addRole(Role role);

   void deleteRole(String roleId);

   void updateRole(String roleId,Role role);

   void saveModuleRole(String roleId, String[] moduleIds);
}
