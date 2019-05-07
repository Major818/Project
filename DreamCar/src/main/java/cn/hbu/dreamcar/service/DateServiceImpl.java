package cn.hbu.dreamcar.service;

import cn.hbu.dreamcar.mapper.DateMapper;
import cn.hbu.dreamcar.pojo.Reservation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2017/10/20.
 */
@Service
public class DateServiceImpl implements DateService {
   @Autowired
   private DateMapper dateMapper;
    @Override
    public void insertDate(Reservation reservation) {
        String dateId = UUID.randomUUID().toString();
        reservation.setDateId(dateId);
        dateMapper.insertDate(reservation);


    }

    @Override
    public List<Reservation> findDate() {

        return dateMapper.findDate();
    }

    @Override
    public boolean delDate(String pid) {
        return dateMapper.delDate(pid);
    }

}
