package cn.tedu.dreamcar.pojo;

import static sun.java2d.cmm.ColorTransform.In;

/**
 * Created by Administrator on 2017/10/19.
 */
public class Car {
    private String  carId;
    private String  userId;
    private String  carName;
    private String  carColor;
    private Integer carNum;


    public String getCarId() {
        return carId;
    }

    public void setCarId(String carId) {
        this.carId = carId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getCarColor() {
        return carColor;
    }

    public void setCarColor(String carColor) {
        this.carColor = carColor;
    }

    public Integer getCarNum() {
        return carNum;
    }

    public void setCarNum(Integer carNum) {
        this.carNum = carNum;
    }
}
