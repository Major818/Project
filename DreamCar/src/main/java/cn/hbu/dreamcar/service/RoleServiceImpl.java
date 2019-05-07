package cn.hbu.dreamcar.service;

import cn.hbu.dreamcar.mapper.ProdMapper;
import cn.hbu.dreamcar.mapper.RoleMapper;
import cn.hbu.dreamcar.pojo.Product;
import cn.hbu.dreamcar.pojo.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2017/10/19.
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Override
    public List<Role> findAll() {
        return roleMapper.findAll();
    }

    @Override
    public Role findRoleById(String roleId) {
        return roleMapper.findRoleById(roleId);
    }

    @Override
    public void addRole(Role role) {
        String id = UUID.randomUUID().toString();
        role.setRoleId(id);

        Date time = new Date();
        role.setCreateTime(time);
        role.setUpdateTime(time);
        roleMapper.addRole(role);
    }

    @Override
    public void deleteRole(String roleId) {
        roleMapper.deleteRole(roleId);
    }

    @Override
    public void updateRole(String roleId,Role role) {
        role.setUpdateTime(new Date());

        roleMapper.updateRole(roleId,role);
    }

    @Override
    public void saveModuleRole(String roleId, String[] moduleIds) {


        roleMapper.deleteByRoleId(roleId);
        for (String moduleId:moduleIds
             ) {
            roleMapper.saveModuleRole(roleId,moduleId);
        }


    }
}
