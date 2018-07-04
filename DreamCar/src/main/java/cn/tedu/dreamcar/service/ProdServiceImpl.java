package cn.tedu.dreamcar.service;

import cn.tedu.dreamcar.mapper.ProdMapper;
import cn.tedu.dreamcar.pojo.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
@Service
public class ProdServiceImpl implements ProdService {
    @Autowired
    private ProdMapper prodMapper;
    @Override
    public List<Product> findProd() {
        return prodMapper.findProd();
    }

    @Override
    public boolean  updateNum(Integer pid,Integer pnum) {
        return prodMapper.updateNum(pid,pnum);
    }

    @Override
    public boolean delProd(Integer pid) {
        return prodMapper.delProd(pid);
    }
}
