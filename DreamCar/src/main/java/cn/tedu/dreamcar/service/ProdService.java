package cn.tedu.dreamcar.service;

import cn.tedu.dreamcar.pojo.Product;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface ProdService {
    List<Product> findProd();
    boolean updateNum(Integer pid, Integer pnum);
    boolean delProd(Integer pid);
}
