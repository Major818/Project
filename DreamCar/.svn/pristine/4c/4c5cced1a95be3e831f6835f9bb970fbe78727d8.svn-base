package cn.tedu.dreamcar.mapper;

import cn.tedu.dreamcar.pojo.Order;
import cn.tedu.dreamcar.pojo.OrderInfo;
import cn.tedu.dreamcar.pojo.OrderItem;
import cn.tedu.dreamcar.pojo.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderMapper {

    List<Product> findAllProduct();

    Product findProductById( String proId);

    void addOrder(Order order);

    void addOrderItem(OrderItem orderItem);

    void updatePnum(@Param("pid") String id, @Param("num") int num);

    List<Order> findOrderByUserId(String userId);

    void deleteOrder(String oid);

    void deleteOrderItem(String oid);

    void updateProductNum(@Param("oid") String oid,@Param("buynum") int buynum);

    List<OrderItem> findOrderItem(String oid);

    Order findOrderById(String oid);

    List<OrderItem> findOrderItemByOrderId(String id);
}
