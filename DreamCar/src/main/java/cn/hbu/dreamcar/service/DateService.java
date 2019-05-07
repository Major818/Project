package cn.hbu.dreamcar.service;

import cn.hbu.dreamcar.pojo.Reservation;
import java.util.List;

/**
 * Created by Administrator on 2017/10/20.
 */
public interface DateService {
    public void insertDate(Reservation reservation);

    public List<Reservation> findDate();
    boolean delDate(String pid);
}
