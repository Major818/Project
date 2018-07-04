package cn.tedu.dreamcar.service;

import cn.tedu.dreamcar.pojo.Order;
import cn.tedu.dreamcar.pojo.OrderInfo;
import cn.tedu.dreamcar.pojo.OrderItem;
import cn.tedu.dreamcar.pojo.Product;

import java.util.List;

public interface OrderService {
    List<Product> findAllProduct();

    Product findProductById(String proId);

    void addOrder(Order order, List<OrderItem> list);

    List<OrderInfo> findOrderByUserId(String userId);

    void deleteOrder(String oid);

}
