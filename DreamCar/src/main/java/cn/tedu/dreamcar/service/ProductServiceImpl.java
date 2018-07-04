package cn.tedu.dreamcar.service;

import cn.tedu.dreamcar.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private OrderMapper orderMapper;
    @Override
    public void updateProductNum(String oid, int buynum) {
        //double num = buynum;
        orderMapper.updateProductNum(oid,buynum);
    }
}
