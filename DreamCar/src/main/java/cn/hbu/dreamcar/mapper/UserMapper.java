package cn.hbu.dreamcar.mapper;

import cn.hbu.dreamcar.pojo.Car;
import cn.hbu.dreamcar.pojo.Role;
import cn.hbu.dreamcar.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

import static javafx.scene.input.KeyCode.V;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface UserMapper {
    public void saveUser(User user);

    public User findUser(@Param("username") String username, @Param("password") String password);

    //用户管理：查询所有用户
    public List<User> findAll();
    //用户管理：删除用户信息
    public void deleteUsers(String[] userIds);
    //用户管理 新增用户
    public void saveUsers(User user);

     public void saveCars(Car car);

    public void saveRoles(@Param("userId") String userId, @Param("roleId") String roleId);

    //登陆
    User findUserByUsername(String username);
    //角色
    String findUserRole(String userId);
    //权限
    public List<String> findPrililegeInfoList(String userId);
}
