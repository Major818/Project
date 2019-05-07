package cn.hbu.dreamcar.service;

import cn.hbu.dreamcar.mapper.CarMapper;
import cn.hbu.dreamcar.mapper.UserMapper;
import cn.hbu.dreamcar.pojo.Car;
import cn.hbu.dreamcar.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2017/10/19.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private  UserMapper userMapper;


    @Autowired
    private CarMapper carMapper;
    /*@Autowired
    public RoleMapper roleMapper;*/



    public void saveUser(User user,Car car){
        String userId= UUID.randomUUID().toString();
        user.setUserId(userId);
        userMapper.saveUser(user);

        car.setUserId(userId);
        carMapper.saveCar(car);

    }

    @Override
    public User findUser(String username, String password) {

        return userMapper.findUser(username,password);

    }


    @Override
    public User findUserByUsername(String username) {

        return userMapper.findUserByUsername(username);
    }

    @Override
    public String findUserRole(String userId) {
        return userMapper.findUserRole(userId);
    }

    @Override
    public String findUserName(String username) {
        User user = userMapper.findUserByUsername(username);
        if(user==null){

            return "用户名可以使用！！";
        }else{


            return "用户名已存在!!";
        }
    }


    @Override
    public List<String> findPrililegeInfoList(String userId) {

        return userMapper.findPrililegeInfoList(userId);
    }

    @Override
    public List<User> findAll() {

        return userMapper.findAll();
    }

    @Override
    public void deleteUsers(String[] userIds) {

         userMapper.deleteUsers(userIds);
    }


    @Override
    public void saveUsers(User user) {
        String userId = UUID.randomUUID().toString();
        user.setUserId(userId);

       /* String roleId = UUID.randomUUID().toString();
        Role role = user.getRole();
        role.setRole_Id(roleId);*/
        userMapper.saveUsers(user);

        String carId = UUID.randomUUID().toString();
        Car car = user.getCar();
        car.setUserId(userId);
        car.setCarId(carId);
        userMapper.saveCars(car);


        String roleId= user.getRole().getRoleId();

        userMapper.saveRoles(userId,roleId);
            /*roleMapper.savaRole(role);*/

    }

}
