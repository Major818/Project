package cn.hbu.dreamcar.pojo;

import java.util.Date;

public class Order {
    private String id;		//--订单编号
    private double money;	//--订单金额
    private String receiverinfo;//--收货信息
    private int paystate;	//--支付状态, 0表未支付 1已支付
    private Date ordertime;	//--下单时间
    private String user_id;	//--用户id(所属人id)
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public double getMoney() {
        return money;
    }
    public void setMoney(double money) {
        this.money = money;
    }
    public String getReceiverinfo() {
        return receiverinfo;
    }
    public void setReceiverinfo(String receiverinfo) {
        this.receiverinfo = receiverinfo;
    }
    public int getPaystate() {
        return paystate;
    }
    public void setPaystate(int paystate) {
        this.paystate = paystate;
    }
    public Date getOrdertime() {
        return ordertime;
    }
    public void setOrdertime(Date ordertime) {
        this.ordertime = ordertime;
    }
    public String getUser_id() {
        return user_id;
    }
    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id='" + id + '\'' +
                ", money=" + money +
                ", receiverinfo='" + receiverinfo + '\'' +
                ", paystate=" + paystate +
                ", ordertime=" + ordertime +
                ", user_id='" + user_id + '\'' +
                '}';
    }
}
