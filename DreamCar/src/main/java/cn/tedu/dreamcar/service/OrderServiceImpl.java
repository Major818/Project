package cn.tedu.dreamcar.service;

import cn.tedu.dreamcar.mapper.OrderMapper;
import cn.tedu.dreamcar.pojo.Order;
import cn.tedu.dreamcar.pojo.OrderInfo;
import cn.tedu.dreamcar.pojo.OrderItem;
import cn.tedu.dreamcar.pojo.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class OrderServiceImpl implements OrderService{
    @Autowired
    private OrderMapper orderMapper;
    @Autowired
    ProductService productService;


    @Override
    public List<Product> findAllProduct() {
        return orderMapper.findAllProduct();
    }

    @Override
    public Product findProductById(String proId) {
        return orderMapper.findProductById(proId);
    }

    @Override
    public void addOrder(Order order, List<OrderItem> list) {
        orderMapper.addOrder(order);
        for (OrderItem orderItem:list
             ) {
            int buyNum = orderItem.getBuyNum();
            String proId = orderItem.getProductId();

            Product prod = orderMapper.findProductById(proId);
            int pnum = prod.getProdNum();
            orderMapper.addOrderItem(orderItem);
            int num = prod.getProdNum()-pnum;
            orderMapper.updatePnum(proId,num);
        }
    }

    @Override
    public List<OrderInfo> findOrderByUserId(String userId) {
        List<Order> orderList = orderMapper.findOrderByUserId(userId);
        List<OrderInfo> orderInfoList = new ArrayList<OrderInfo>();
        for (Order order:orderList){

            List<OrderItem> orderItemsList = orderMapper.findOrderItemByOrderId(order.getId());

            Map<Product,Integer> map = new HashMap<Product,Integer>();
            for (OrderItem orderItem:orderItemsList ){
                String proId = orderItem.getProductId();

                System.out.println(proId);
                Product prod = orderMapper.findProductById(proId);

                int buyNum = orderItem.getBuyNum();
                map.put(prod,buyNum);
            }
            OrderInfo orderInfo = new OrderInfo();
            orderInfo.setOrder(order);
            orderInfo.setMap(map);
            orderInfoList.add(orderInfo);

        }

            return orderInfoList;


    }

    @Override
    public void deleteOrder(String oid) {
        Order order = orderMapper.findOrderById(oid);
        if(order.getPaystate()==0) {

            List<OrderItem> orderItemList = orderMapper.findOrderItem(oid);
            if (orderItemList != null) {
                for (OrderItem orderItem: orderItemList
                 ){
                    productService.updateProductNum(oid,orderItem.getBuyNum());
                }
            }
        }
        orderMapper.deleteOrder(oid);
        orderMapper.deleteOrderItem(oid);

    }

}
