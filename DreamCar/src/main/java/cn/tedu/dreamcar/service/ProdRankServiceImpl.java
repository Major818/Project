package cn.tedu.dreamcar.service;

import cn.tedu.dreamcar.mapper.ProdRankMapper;
import cn.tedu.dreamcar.pojo.OrderItem;
import cn.tedu.dreamcar.pojo.SaleInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProdRankServiceImpl implements ProdRankService {
    @Autowired
    ProdRankMapper prodRankMapper;
    @Override
    public List<SaleInfo> findSaleInfos() {
      List<SaleInfo> saleInfoList = prodRankMapper.findSaleInfos();
        return saleInfoList;
    }
}
