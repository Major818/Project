package cn.hbu.dreamcar.service;

import cn.hbu.dreamcar.pojo.Order;
import cn.hbu.dreamcar.pojo.OrderInfo;
import cn.hbu.dreamcar.pojo.OrderItem;
import cn.hbu.dreamcar.pojo.Product;

import java.util.List;

public interface OrderService {
    List<Product> findAllProduct();

    Product findProductById(String proId);

    void addOrder(Order order, List<OrderItem> list);

    List<OrderInfo> findOrderByUserId(String userId);

    void deleteOrder(String oid);

}
