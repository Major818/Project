package cn.hbu.dreamcar.service;

import cn.hbu.dreamcar.pojo.Car;
import cn.hbu.dreamcar.pojo.User;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface UserService {
    public void saveUser(User user,Car car);


    public User findUser(String username,String password);

    //用户管理系统查询所有用户
    public List<User> findAll();

    public void deleteUsers(String[] userIds);

    public void saveUsers(User user);
    //权限
    List<String> findPrililegeInfoList(String userId);
    //登陆
    User findUserByUsername(String username);
    //角色
     public String findUserRole(String userId);

    String findUserName(String username);
}
