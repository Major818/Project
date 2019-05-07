package cn.hbu.dreamcar.mapper;

import cn.hbu.dreamcar.pojo.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface ProdMapper {

    List<Product> findProd();

    boolean updateNum(@Param("pid") Integer pid, @Param("pnum") Integer pnum);

    boolean delProd(Integer pid);
}
