package cn.tedu.dreamcar.mapper;

import cn.tedu.dreamcar.pojo.Reservation;

import java.util.List;

/**
 * Created by Administrator on 2017/10/20.
 */
public interface DateMapper {
    //插入预约信息
    public void insertDate(Reservation reservation);
    //查询预约列表信息
    public List<Reservation> findDate();

    boolean delDate(String pid);
}
